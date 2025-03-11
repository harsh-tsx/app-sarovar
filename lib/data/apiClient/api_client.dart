import 'dart:async';

import 'package:app_1point2_store/configs/env.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/swagger_generated_code/client_index.dart';
import 'package:chopper/chopper.dart';

var ApiClient = StoreApi.create(
  baseUrl: Uri.tryParse(Env.baseUrl),
  interceptors: [
    // CurlInterceptor(),
    AuthInterceptor(),
  ],
  // authenticator: new MyAuthenticator(),
);

// class MyAuthenticator extends Authenticator {
//   @override
//   FutureOr<Request?> authenticate(Request request, Response response, [reques]) async {
//     var token = getToken();

//     final Map<String, String> updatedHeaders = Map<String, String>.of(request.headers);

//     var newToken = 'Bearer ${token}';

//     updatedHeaders.update('authorization', (String _) => newToken, ifAbsent: () => newToken);

//     print("response.statusCode: ${response.statusCode} for ${request.uri}");

//     if (response.statusCode == 401) {
//       // logout();
//     }

//     return request.copyWith(headers: updatedHeaders);
//   }
// }

class AuthInterceptor implements Interceptor {
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    var logText =
        "==========================================================================================================";
    addLog(log) {
      logText = logText + "\n||" + log;
    }

    addLog("${chain.request.method} ${chain.request.baseUri}${chain.request.uri}");
    var token = getToken();
    var newToken = 'Bearer ${token}';

    final request = applyHeader(chain.request, 'authorization', newToken, override: false);
    addLog("QUERY: ${chain.request.parameters}");
    addLog("BODY: ${chain.request.body}");
    final response = await chain.proceed(request);

    if (response.statusCode == 401) {
      Toast.error("Invalid Authorization!\nLogging you out.");
      logout();
    }
    addLog(
        "RESPONSE: ${response.bodyString}\n==========================================================================================================");

    print(logText);

    return response;
  }
}
