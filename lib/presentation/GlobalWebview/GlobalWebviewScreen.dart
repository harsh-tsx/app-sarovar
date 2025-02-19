import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class GlobalWebviewScreen extends StatefulWidget {
  String url;
  GlobalWebviewScreen(this.url);

  @override
  State<GlobalWebviewScreen> createState() => _GlobalWebviewScreenState();
}

class _GlobalWebviewScreenState extends State<GlobalWebviewScreen> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewSettings options = InAppWebViewSettings(
    useShouldOverrideUrlLoading: true,
    mediaPlaybackRequiresUserGesture: false,
    useHybridComposition: true,
    allowsInlineMediaPlayback: true,
    // crossPlatform: InAppWebViewOptions(
    //   useShouldOverrideUrlLoading: true,
    //   mediaPlaybackRequiresUserGesture: false,
    // ),
    // android: AndroidInAppWebViewOptions(
    //   useHybridComposition: true,
    // ),
    // ios: IOSInAppWebViewOptions(
    //   allowsInlineMediaPlayback: true,
    // ),
  );

  late PullToRefreshController pullToRefreshController;
  String url = "";
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

    pullToRefreshController = PullToRefreshController(
      settings: PullToRefreshSettings(
        color: Colors.blue,
      ),
      onRefresh: () async {
        // if (Platform.isAndroid) {
        webViewController?.reload();
        // } else if (Platform.isIOS) {
        //   webViewController?.loadUrl(
        //       urlRequest: URLRequest(url: await webViewController?.getUrl()));
        // }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("Official InAppWebView website")),
        body: Column(children: <Widget>[
      // TextField(
      //   decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
      //   controller: urlController,
      //   keyboardType: TextInputType.url,
      //   onSubmitted: (value) {
      //     var url = Uri.parse(value);
      //     if (url.scheme.isEmpty) {
      //       url = Uri.parse("https://www.google.com/search?q=" + value);
      //     }
      //     webViewController?.loadUrl(urlRequest: URLRequest(url: url));
      //   },
      // ),
      Expanded(
        child: Stack(
          children: [
            InAppWebView(
              key: webViewKey,
              initialUrlRequest: URLRequest(url: WebUri(widget.url)),
              initialSettings: options,
              pullToRefreshController: pullToRefreshController,
              onWebViewCreated: (controller) {
                webViewController = controller;
              },
              onLoadStart: (controller, url) {
                setState(() {
                  this.url = url.toString();
                  urlController.text = this.url;
                });
              },
              onPermissionRequest: (controller, origin) async {
                return PermissionResponse(
                  resources: [],
                  action: PermissionResponseAction.GRANT,
                );
                // return PermissionRequestResponse(
                //     resources: resources,
                //     action: PermissionRequestResponseAction.GRANT);
              }
              // androidOnPermissionRequest:
              ,
              shouldOverrideUrlLoading: (controller, navigationAction) async {
                var uri = navigationAction.request.url!;

                if (!["http", "https", "file", "chrome", "data", "javascript", "about"].contains(uri.scheme)) {
                  // if (await canLaunch(url)) {
                  //   // Launch the App
                  //   await launch(
                  //     url,
                  //   );
                  //   // and cancel the request
                  //   return NavigationActionPolicy.CANCEL;
                  // }
                }

                return NavigationActionPolicy.ALLOW;
              },
              onLoadStop: (controller, url) async {
                pullToRefreshController.endRefreshing();
                setState(() {
                  this.url = url.toString();
                  urlController.text = this.url;
                });
              },
              onReceivedError: (controller, request, error) {
                pullToRefreshController.endRefreshing();
              },
              onProgressChanged: (controller, progress) {
                if (progress == 100) {
                  pullToRefreshController.endRefreshing();
                }
                setState(() {
                  this.progress = progress / 100;
                  urlController.text = this.url;
                });
              },
              onUpdateVisitedHistory: (controller, url, androidIsReload) {
                setState(() {
                  this.url = url.toString();
                  urlController.text = this.url;
                });
              },
              onConsoleMessage: (controller, consoleMessage) {
                print(consoleMessage);
              },
            ),
            progress < 1.0 ? LinearProgressIndicator(value: progress) : Container(),
          ],
        ),
      ),
      // ButtonBar(
      //   alignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     ElevatedButton(
      //       child: Icon(Icons.arrow_back),
      //       onPressed: () {
      //         webViewController?.goBack();
      //       },
      //     ),
      //     ElevatedButton(
      //       child: Icon(Icons.arrow_forward),
      //       onPressed: () {
      //         webViewController?.goForward();
      //       },
      //     ),
      //     ElevatedButton(
      //       child: Icon(Icons.refresh),
      //       onPressed: () {
      //         webViewController?.reload();
      //       },
      //     ),
      //   ],
      // ),
    ]));
  }
}
