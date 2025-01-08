import 'dart:async';

import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/swagger_generated_code/client_index.dart';
import 'package:chopper/chopper.dart';

var ApiClient = StoreApi.create(
  baseUrl: Uri.tryParse("https://sarovar-api.krida.top"),
  interceptors: [
    CurlInterceptor(),
    HttpLoggingInterceptor(),
  ],
  authenticator: MyAuthenticator(),
);

class MyAuthenticator extends Authenticator {
  @override
  FutureOr<Request?> authenticate(Request request, Response response,
      [reques]) async {
    final Map<String, String> updatedHeaders =
        Map<String, String>.of(request.headers);

    var newToken = 'Bearer ${getToken()}';

    updatedHeaders.update('Authorization', (String _) => newToken,
        ifAbsent: () => newToken);

    return request.copyWith(headers: updatedHeaders);
  }
}
