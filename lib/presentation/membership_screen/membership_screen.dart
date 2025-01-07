import 'dart:async';
import 'dart:io';

import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/membership_screen/consumable_store.dart';
import 'package:app_1point2_store/widgets/app_bar/appbar_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_1point2_store/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:app_1point2_store/widgets/app_bar/custom_app_bar.dart';
import 'package:app_1point2_store/widgets/custom_checkbox_button.dart';
import 'package:app_1point2_store/widgets/custom_elevated_button.dart';
import 'package:flutter/widgets.dart';
import 'controller/membership_controller.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile_item_widget.dart';

import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';

// class MembershipScreen extends StatefulWidget {
//   const MembershipScreen({super.key});

//   @override
//   State<MembershipScreen> createState() => _MembershipScreenState();
// }

// class _MembershipScreenState extends State<MembershipScreen> {
//   var controller =
//       isControllerRegistered<MembershipController>(MembershipController());
//   var pricingList = [
//     "Monthly: \$3.99 per month",
//     "Annual: \$37.99 per year (Save 20%)"
//   ];

//   final InAppPurchase _inAppPurchase = InAppPurchase.instance;
//   late StreamSubscription<List<PurchaseDetails>> _subscription;
//   List<String> _notFoundIds = <String>[];
//   List<ProductDetails> _products = <ProductDetails>[];
//   List<PurchaseDetails> _purchases = <PurchaseDetails>[];
//   List<String> _consumables = <String>[];
//   bool _isAvailable = false;
//   bool _purchasePending = false;
//   bool _loading = true;
//   String? _queryProductError;

//     @override
//   void initState() {
//     final Stream<List<PurchaseDetails>> purchaseUpdated =
//         _inAppPurchase.purchaseStream;
//     _subscription =
//         purchaseUpdated.listen((List<PurchaseDetails> purchaseDetailsList) {
//       _listenToPurchaseUpdated(purchaseDetailsList);
//     }, onDone: () {
//       _subscription.cancel();
//     }, onError: (Object error) {
//       // handle error here.
//     });
//     initStoreInfo();
//     super.initState();
//   }

//   Future<void> initStoreInfo() async {
//     final bool isAvailable = await _inAppPurchase.isAvailable();
//     if (!isAvailable) {
//       setState(() {
//         _isAvailable = isAvailable;
//         _products = <ProductDetails>[];
//         _purchases = <PurchaseDetails>[];
//         _notFoundIds = <String>[];
//         _consumables = <String>[];
//         _purchasePending = false;
//         _loading = false;
//       });
//       return;
//     }

//     if (Platform.isIOS) {
//       final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
//           _inAppPurchase
//               .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
//       await iosPlatformAddition.setDelegate(ExamplePaymentQueueDelegate());
//     }

//     final ProductDetailsResponse productDetailResponse =
//         await _inAppPurchase.queryProductDetails(_kProductIds.toSet());
//     if (productDetailResponse.error != null) {
//       setState(() {
//         _queryProductError = productDetailResponse.error!.message;
//         _isAvailable = isAvailable;
//         _products = productDetailResponse.productDetails;
//         _purchases = <PurchaseDetails>[];
//         _notFoundIds = productDetailResponse.notFoundIDs;
//         _consumables = <String>[];
//         _purchasePending = false;
//         _loading = false;
//       });
//       return;
//     }

//     if (productDetailResponse.productDetails.isEmpty) {
//       setState(() {
//         _queryProductError = null;
//         _isAvailable = isAvailable;
//         _products = productDetailResponse.productDetails;
//         _purchases = <PurchaseDetails>[];
//         _notFoundIds = productDetailResponse.notFoundIDs;
//         _consumables = <String>[];
//         _purchasePending = false;
//         _loading = false;
//       });
//       return;
//     }

//     final List<String> consumables = await ConsumableStore.load();
//     setState(() {
//       _isAvailable = isAvailable;
//       _products = productDetailResponse.productDetails;
//       _notFoundIds = productDetailResponse.notFoundIDs;
//       _consumables = consumables;
//       _purchasePending = false;
//       _loading = false;
//     });
//   }

//   @override
//   void dispose() {
//     if (Platform.isIOS) {
//       final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
//           _inAppPurchase
//               .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
//       iosPlatformAddition.setDelegate(null);
//     }
//     _subscription.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.black,
//                 size: 40.fSize,
//               ),
//             ),
//           ],
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 width: 82.w,
//               ),
//               CustomImageView(
//                 imagePath: ImageConstant.imgIconApp,
//                 width: 70.w,
//               ),
//             ],
//           ),
//           leading: InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             ),
//           ),
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//         ),
//         body: Container(
//           height: Get.height,
//           padding: EdgeInsets.symmetric(
//             horizontal: 16.w,
//             vertical: 25.h,
//           ),
//           // decoration: AppDecoration.gradientOnErrorToOrange,
//           child: SingleChildScrollView(
//             child: Column(
//               // alignment: Alignment.topLeft,
//               children: [
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 4.w),
//                         child: Text(
//                           "Membership",
//                           style: CustomTextStyles.titleLarge21,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 24.h),
//                     _buildPremiumMembershipSection(),
//                     SizedBox(height: 16.h),
//                     Text(
//                       "Experience the Difference with Pro",
//                       style: CustomTextStyles.titleLarge21,
//                     ),
//                     SizedBox(height: 5.h),
//                     SizedBox(
//                       width: 275.w,
//                       child: Text(
//                         "Cancel anytime",
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.center,
//                         style: theme.textTheme.bodyMedium!.copyWith(
//                           color: appTheme.black900,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 8.h),
//                     _buildVivekCardSection(),
//                     SizedBox(height: 8.h),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildPremiumMembershipSection() {
//     return Container(
//       margin: EdgeInsets.only(left: 4.w),
//       decoration: AppDecoration.outlinePrimary.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Container(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
//                   decoration: BoxDecoration(
//                     color: appTheme.primaryBlue,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(10),
//                     ),
//                   ),
//                   alignment: Alignment.center,
//                   child: Text(
//                     "lbl_premium".tr,
//                     style: theme.textTheme.headlineLarge!.copyWith(
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 1.h),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               style: theme.textTheme.titleLarge!.copyWith(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 16.fSize,
//               ),
//               "Pricing Options",
//             ),
//           ),
//           SizedBox(height: 11.h),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ListView.separated(
//               shrinkWrap: true,
//               itemCount: pricingList.length,
//               separatorBuilder: (context, index) {
//                 return Divider(
//                   indent: 5.w,
//                   endIndent: 5.w,
//                 );
//               },
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         size: 16.fSize,
//                         color: appTheme.primaryBlue,
//                       ),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Text(
//                         "${pricingList[index]}",
//                         maxLines: 4,
//                         overflow: TextOverflow.ellipsis,
//                         style: theme.textTheme.bodyLarge!.copyWith(
//                           height: 1.94.h,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 10.h),
//           CustomElevatedButton(
//             text: "Subscribe to Allstars Pro",
//             margin: EdgeInsets.only(left: 2.w),
//             buttonStyle: CustomButtonStyles.outlinePrimary,
//             buttonTextStyle: TextStyle(
//               fontWeight: FontWeight.w500,
//               color: Colors.black,
//               fontSize: 18.fSize,
//             ),
//           ),
//           SizedBox(height: 16.h),
//           Align(
//             alignment: Alignment.center,
//             child: CustomElevatedButton(
//               width: 120.w,
//               height: 38.h,
//               onPressed: () {},
//               buttonStyle: ButtonStyle(
//                 backgroundColor: MaterialStatePropertyAll(
//                   Color(0xffeceaf4),
//                 ),
//                 shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(100))),
//               ),
//               text: "Terms Apply",
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//               ),
//               buttonTextStyle: theme.textTheme.titleLarge!.copyWith(
//                 color: appTheme.primaryPurple,
//                 fontSize: 14.fSize,
//                 fontWeight: FontWeight.w500,
//                 decoration: TextDecoration.underline,
//               ),
//             ),
//           ),
//           SizedBox(height: 12.h),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildVivekCardSection() {
//     return Container(
//       margin: EdgeInsets.only(left: 4.w),
//       decoration: AppDecoration.outlinePrimary.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 38.h,
//             width: 373.w,
//             child: Container(
//               height: 38.h,
//               width: 373.w,
//               padding: EdgeInsets.symmetric(
//                 vertical: 11.h,
//                 horizontal: 10.w,
//               ),
//               decoration: AppDecoration.fillGray5001.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL101,
//                 color: Colors.grey,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SizedBox(
//                     width: 373.w.percent(50),
//                     child: Text(
//                       "Fan Access with Pro",
//                       style: CustomTextStyles.titleSmallOnError,
//                     ),
//                   ),
//                   Text(
//                     "lbl_free".tr,
//                     style: CustomTextStyles.titleSmallOnError,
//                   ),
//                   Text(
//                     "lbl_premium".tr,
//                     style: CustomTextStyles.titleSmallOnError,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 9.h),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 9.w),
//             child: Obx(
//               () => ListView.separated(
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 separatorBuilder: (
//                   context,
//                   index,
//                 ) {
//                   return SizedBox(
//                     height: 11.h,
//                   );
//                 },
//                 itemCount: controller
//                     .membershipModelObj.value.userprofileItemList.value.length,
//                 itemBuilder: (context, index) {
//                   UserprofileItemModel model = controller.membershipModelObj
//                       .value.userprofileItemList.value[index];
//                   return UserprofileItemWidget(
//                     model,
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

///

// Auto-consume must be true on iOS.
// To try without auto-consume on another platform, change `true` to `false` here.
final bool _kAutoConsume = Platform.isIOS || true;

const String _kConsumableId = 'consumable';
const String _kUpgradeId = 'upgrade';
const String _kSilverSubscriptionId = 'allstars_pro';
// const String _kGoldSubscriptionId = 'subscription_gold';
const List<String> _kProductIds = <String>[
  _kConsumableId,
  _kUpgradeId,
  _kSilverSubscriptionId,
  // _kGoldSubscriptionId,
];

class MembershipScreen extends StatefulWidget {
  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<String> _notFoundIds = <String>[];
  List<ProductDetails> _products = <ProductDetails>[];
  List<PurchaseDetails> _purchases = <PurchaseDetails>[];
  List<String> _consumables = <String>[];
  bool _isAvailable = false;
  bool _purchasePending = false;
  bool _loading = true;
  String? _queryProductError;

  @override
  void initState() {
    final Stream<List<PurchaseDetails>> purchaseUpdated =
        _inAppPurchase.purchaseStream;
    _subscription =
        purchaseUpdated.listen((List<PurchaseDetails> purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      _subscription.cancel();
    }, onError: (Object error) {
      // handle error here.
    });
    initStoreInfo();
    super.initState();
  }

  Future<void> initStoreInfo() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      setState(() {
        _isAvailable = isAvailable;
        _products = <ProductDetails>[];
        _purchases = <PurchaseDetails>[];
        _notFoundIds = <String>[];
        _consumables = <String>[];
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      await iosPlatformAddition.setDelegate(ExamplePaymentQueueDelegate());
    }

    final ProductDetailsResponse productDetailResponse =
        await _inAppPurchase.queryProductDetails(_kProductIds.toSet());
    if (productDetailResponse.error != null) {
      setState(() {
        _queryProductError = productDetailResponse.error!.message;
        _isAvailable = isAvailable;
        _products = productDetailResponse.productDetails;
        _purchases = <PurchaseDetails>[];
        _notFoundIds = productDetailResponse.notFoundIDs;
        _consumables = <String>[];
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    if (productDetailResponse.productDetails.isEmpty) {
      setState(() {
        _queryProductError = null;
        _isAvailable = isAvailable;
        _products = productDetailResponse.productDetails;
        _purchases = <PurchaseDetails>[];
        _notFoundIds = productDetailResponse.notFoundIDs;
        _consumables = <String>[];
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    final List<String> consumables = await ConsumableStore.load();
    setState(() {
      _isAvailable = isAvailable;
      _products = productDetailResponse.productDetails;
      _notFoundIds = productDetailResponse.notFoundIDs;
      _consumables = consumables;
      _purchasePending = false;
      _loading = false;
    });
  }

  @override
  void dispose() {
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      iosPlatformAddition.setDelegate(null);
    }
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> stack = <Widget>[];
    if (_queryProductError == null) {
      stack.add(
        ListView(
          children: <Widget>[
            _buildConnectionCheckTile(),
            _buildProductList(),
            _buildConsumableBox(),
            _buildRestoreButton(),
          ],
        ),
      );
    } else {
      stack.add(Center(
        child: Text(_queryProductError!),
      ));
    }
    if (_purchasePending) {
      stack.add(
        const Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.3,
              child: ModalBarrier(dismissible: false, color: Colors.grey),
            ),
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('IAP Example'),
        ),
        body: Stack(
          children: stack,
        ),
      ),
    );
  }

  Card _buildConnectionCheckTile() {
    if (_loading) {
      return const Card(child: ListTile(title: Text('Trying to connect...')));
    }
    final Widget storeHeader = ListTile(
      leading: Icon(_isAvailable ? Icons.check : Icons.block,
          color: _isAvailable
              ? Colors.green
              : ThemeData.light().colorScheme.error),
      title:
          Text('The store is ${_isAvailable ? 'available' : 'unavailable'}.'),
    );
    final List<Widget> children = <Widget>[storeHeader];

    if (!_isAvailable) {
      children.addAll(<Widget>[
        const Divider(),
        ListTile(
          title: Text('Not connected',
              style: TextStyle(color: ThemeData.light().colorScheme.error)),
          subtitle: const Text(
              'Unable to connect to the payments processor. Has this app been configured correctly? See the example README for instructions.'),
        ),
      ]);
    }
    return Card(child: Column(children: children));
  }

  Card _buildProductList() {
    if (_loading) {
      return const Card(
          child: ListTile(
              leading: CircularProgressIndicator(),
              title: Text('Fetching products...')));
    }
    if (!_isAvailable) {
      return const Card();
    }
    const ListTile productHeader = ListTile(title: Text('Products for Sale'));
    final List<ListTile> productList = <ListTile>[];
    if (_notFoundIds.isNotEmpty) {
      productList.add(ListTile(
          title: Text('[${_notFoundIds.join(", ")}] not found',
              style: TextStyle(color: ThemeData.light().colorScheme.error)),
          subtitle: const Text(
              'This app needs special configuration to run. Please see example/README.md for instructions.')));
    }

    // This loading previous purchases code is just a demo. Please do not use this as it is.
    // In your app you should always verify the purchase data using the `verificationData` inside the [PurchaseDetails] object before trusting it.
    // We recommend that you use your own server to verify the purchase data.
    final Map<String, PurchaseDetails> purchases =
        Map<String, PurchaseDetails>.fromEntries(
            _purchases.map((PurchaseDetails purchase) {
      if (purchase.pendingCompletePurchase) {
        _inAppPurchase.completePurchase(purchase);
      }
      return MapEntry<String, PurchaseDetails>(purchase.productID, purchase);
    }));
    productList.addAll(_products.map(
      (ProductDetails productDetails) {
        final PurchaseDetails? previousPurchase = purchases[productDetails.id];
        return ListTile(
          title: Text(
            productDetails.title,
          ),
          subtitle: Text(
            productDetails.description,
          ),
          trailing: previousPurchase != null && Platform.isIOS
              ? IconButton(
                  onPressed: () => confirmPriceChange(context),
                  icon: const Icon(Icons.upgrade))
              : TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green[800],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    late PurchaseParam purchaseParam;

                    if (Platform.isAndroid) {
                      // NOTE: If you are making a subscription purchase/upgrade/downgrade, we recommend you to
                      // verify the latest status of you your subscription by using server side receipt validation
                      // and update the UI accordingly. The subscription purchase status shown
                      // inside the app may not be accurate.
                      final GooglePlayPurchaseDetails? oldSubscription =
                          _getOldSubscription(productDetails, purchases);

                      purchaseParam = GooglePlayPurchaseParam(
                          productDetails: productDetails,
                          changeSubscriptionParam: (oldSubscription != null)
                              ? ChangeSubscriptionParam(
                                  oldPurchaseDetails: oldSubscription,
                                  prorationMode:
                                      ProrationMode.immediateWithTimeProration,
                                )
                              : null);
                    } else {
                      purchaseParam = PurchaseParam(
                        productDetails: productDetails,
                      );
                    }

                    if (productDetails.id == _kConsumableId) {
                      _inAppPurchase.buyConsumable(
                          purchaseParam: purchaseParam,
                          autoConsume: _kAutoConsume);
                    } else {
                      _inAppPurchase.buyNonConsumable(
                          purchaseParam: purchaseParam);
                    }
                  },
                  child: Text(productDetails.price),
                ),
        );
      },
    ));

    return Card(
        child: Column(
            children: <Widget>[productHeader, const Divider()] + productList));
  }

  Card _buildConsumableBox() {
    if (_loading) {
      return const Card(
          child: ListTile(
              leading: CircularProgressIndicator(),
              title: Text('Fetching consumables...')));
    }
    if (!_isAvailable || _notFoundIds.contains(_kConsumableId)) {
      return const Card();
    }
    const ListTile consumableHeader =
        ListTile(title: Text('Purchased consumables'));
    final List<Widget> tokens = _consumables.map((String id) {
      return GridTile(
        child: IconButton(
          icon: const Icon(
            Icons.stars,
            size: 42.0,
            color: Colors.orange,
          ),
          splashColor: Colors.yellowAccent,
          onPressed: () => consume(id),
        ),
      );
    }).toList();
    return Card(
        child: Column(children: <Widget>[
      consumableHeader,
      const Divider(),
      GridView.count(
        crossAxisCount: 5,
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: tokens,
      )
    ]));
  }

  Widget _buildRestoreButton() {
    if (_loading) {
      return Container();
    }

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
            ),
            onPressed: () => _inAppPurchase.restorePurchases(),
            child: const Text('Restore purchases'),
          ),
        ],
      ),
    );
  }

  Future<void> consume(String id) async {
    await ConsumableStore.consume(id);
    final List<String> consumables = await ConsumableStore.load();
    setState(() {
      _consumables = consumables;
    });
  }

  void showPendingUI() {
    setState(() {
      _purchasePending = true;
    });
  }

  Future<void> deliverProduct(PurchaseDetails purchaseDetails) async {
    // IMPORTANT!! Always verify purchase details before delivering the product.
    if (purchaseDetails.productID == _kConsumableId) {
      await ConsumableStore.save(purchaseDetails.purchaseID!);
      final List<String> consumables = await ConsumableStore.load();
      setState(() {
        _purchasePending = false;
        _consumables = consumables;
      });
    } else {
      setState(() {
        _purchases.add(purchaseDetails);
        _purchasePending = false;
      });
    }
  }

  void handleError(IAPError error) {
    setState(() {
      _purchasePending = false;
    });
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) {
    // IMPORTANT!! Always verify a purchase before delivering the product.
    // For the purpose of an example, we directly return true.
    return Future<bool>.value(true);
  }

  void _handleInvalidPurchase(PurchaseDetails purchaseDetails) {
    // handle invalid purchase here if  _verifyPurchase` failed.
  }

  Future<void> _listenToPurchaseUpdated(
      List<PurchaseDetails> purchaseDetailsList) async {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        showPendingUI();
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          handleError(purchaseDetails.error!);
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
            purchaseDetails.status == PurchaseStatus.restored) {
          final bool valid = await _verifyPurchase(purchaseDetails);
          if (valid) {
            unawaited(deliverProduct(purchaseDetails));
          } else {
            _handleInvalidPurchase(purchaseDetails);
            return;
          }
        }
        if (Platform.isAndroid) {
          if (!_kAutoConsume && purchaseDetails.productID == _kConsumableId) {
            final InAppPurchaseAndroidPlatformAddition androidAddition =
                _inAppPurchase.getPlatformAddition<
                    InAppPurchaseAndroidPlatformAddition>();
            await androidAddition.consumePurchase(purchaseDetails);
          }
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }

  Future<void> confirmPriceChange(BuildContext context) async {
    // Price changes for Android are not handled by the application, but are
    // instead handled by the Play Store. See
    // https://developer.android.com/google/play/billing/price-changes for more
    // information on price changes on Android.
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iapStoreKitPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      await iapStoreKitPlatformAddition.showPriceConsentIfNeeded();
    }
  }

  GooglePlayPurchaseDetails? _getOldSubscription(
      ProductDetails productDetails, Map<String, PurchaseDetails> purchases) {
    // This is just to demonstrate a subscription upgrade or downgrade.
    // This method assumes that you have only 2 subscriptions under a group, 'subscription_silver' & 'subscription_gold'.
    // The 'subscription_silver' subscription can be upgraded to 'subscription_gold' and
    // the 'subscription_gold' subscription can be downgraded to 'subscription_silver'.
    // Please remember to replace the logic of finding the old subscription Id as per your app.
    // The old subscription is only required on Android since Apple handles this internally
    // by using the subscription group feature in iTunesConnect.
    GooglePlayPurchaseDetails? oldSubscription;
    // if (productDetails.id == _kSilverSubscriptionId &&
    //     purchases[_kGoldSubscriptionId] != null) {
    //   oldSubscription =
    //       purchases[_kGoldSubscriptionId]! as GooglePlayPurchaseDetails;
    // } else if (productDetails.id == _kGoldSubscriptionId &&
    //     purchases[_kSilverSubscriptionId] != null) {
    //   oldSubscription =
    //       purchases[_kSilverSubscriptionId]! as GooglePlayPurchaseDetails;
    // }
    return oldSubscription;
  }
}

/// Example implementation of the
/// [`SKPaymentQueueDelegate`](https://developer.apple.com/documentation/storekit/skpaymentqueuedelegate?language=objc).
///
/// The payment queue delegate can be implementated to provide information
/// needed to complete transactions.
class ExamplePaymentQueueDelegate implements SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(
      SKPaymentTransactionWrapper transaction, SKStorefrontWrapper storefront) {
    return true;
  }

  @override
  bool shouldShowPriceConsent() {
    return false;
  }
}
