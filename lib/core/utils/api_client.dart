// see imported the local package

import 'package:app_1point2_store/configs/env.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// created a dio instance to insert it into our package instance
final Dio dio = Dio(BaseOptions(
  baseUrl: Env.baseUrl,
  connectTimeout: Duration(seconds: 900),
  sendTimeout: Duration(seconds: 900),
  receiveTimeout: Duration(seconds: 900),
));

/**
 * here is our package instance it needs a dio instance to run with.
 * gonna use this "Api" variable in the whole app now
 */
// final Api = CustomApi(dio: dio, basePathOverride: Env.baseUrl, interceptors: [
//   // added some extra plugins (ignore them)
//   DioInterceptor(),
//   PrettyDioLogger(
//     requestBody: true,
//     requestHeader: true,
//     responseBody: true,
//     responseHeader: true,
//     error: true,
//   ),
// ]);

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var token = getToken();
    // options.headers.addAll({
    //   "authorization": "Bearer ${token}",
    // });
    // get token from the storage
    if (token != null) {
      options.headers.addAll({
        "authorization": "Bearer ${token}",
      });
    }
    return super.onRequest(options, handler);
  }
}
