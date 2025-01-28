//Generated code

part of 'store_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$StoreApi extends StoreApi {
  _$StoreApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = StoreApi;

  @override
  Future<Response<EmployeeStoreAuthLoginPost$Response>>
      _employeeStoreAuthLoginPost({
    String? authorization,
    required EmployeeStoreAuthLoginPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/employee-store/auth/login');
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<EmployeeStoreAuthLoginPost$Response,
        EmployeeStoreAuthLoginPost$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreAuthMeGet$Response>> _employeeStoreAuthMeGet(
      {String? authorization}) {
    final Uri $url = Uri.parse('/employee-store/auth/me');
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<EmployeeStoreAuthMeGet$Response,
        EmployeeStoreAuthMeGet$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreEmployeeOrdersGet$Response>>
      _employeeStoreEmployeeOrdersGet({
    String? authorization,
    required String? page,
    required String? size,
  }) {
    final Uri $url = Uri.parse('/employee-store/employee-orders/');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EmployeeStoreEmployeeOrdersGet$Response,
        EmployeeStoreEmployeeOrdersGet$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreEmployeeOrdersPost$Response>>
      _employeeStoreEmployeeOrdersPost({
    String? authorization,
    required EmployeeStoreEmployeeOrdersPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/employee-store/employee-orders/');
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<EmployeeStoreEmployeeOrdersPost$Response,
        EmployeeStoreEmployeeOrdersPost$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreEmployeeOrdersPut$Response>>
      _employeeStoreEmployeeOrdersPut({
    String? authorization,
    required EmployeeStoreEmployeeOrdersPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/employee-store/employee-orders/');
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<EmployeeStoreEmployeeOrdersPut$Response,
        EmployeeStoreEmployeeOrdersPut$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreEmployeeOrdersDelete$Response>>
      _employeeStoreEmployeeOrdersDelete({
    String? authorization,
    required String? id,
  }) {
    final Uri $url = Uri.parse('/employee-store/employee-orders/');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EmployeeStoreEmployeeOrdersDelete$Response,
        EmployeeStoreEmployeeOrdersDelete$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreEmployeeOrdersActiveOrderGet$Response>>
      _employeeStoreEmployeeOrdersActiveOrderGet({String? authorization}) {
    final Uri $url = Uri.parse('/employee-store/employee-orders/active-order');
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<EmployeeStoreEmployeeOrdersActiveOrderGet$Response,
        EmployeeStoreEmployeeOrdersActiveOrderGet$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response>>
      _employeeStoreEmployeeOrdersActiveReturnOrderGet(
          {String? authorization}) {
    final Uri $url =
        Uri.parse('/employee-store/employee-orders/active-return-order');
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response,
        EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreEmployeeOrdersOutPost$Response>>
      _employeeStoreEmployeeOrdersOutPost({
    String? authorization,
    required EmployeeStoreEmployeeOrdersOutPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/employee-store/employee-orders/out');
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<EmployeeStoreEmployeeOrdersOutPost$Response,
        EmployeeStoreEmployeeOrdersOutPost$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreEmployeeOrdersConfirmPost$Response>>
      _employeeStoreEmployeeOrdersConfirmPost({
    String? authorization,
    required String? order,
    String? remark,
    String? scannedoutside,
    List<int>? IMAGES,
  }) {
    final Uri $url = Uri.parse('/employee-store/employee-orders/confirm');
    final Map<String, dynamic> $params = <String, dynamic>{
      'order': order,
      'remark': remark,
      'SCANNEDOUTSIDE': scannedoutside,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>?>(
        'IMAGES',
        IMAGES,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EmployeeStoreEmployeeOrdersConfirmPost$Response,
        EmployeeStoreEmployeeOrdersConfirmPost$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreEmployeeOrdersConfirmPut$Response>>
      _employeeStoreEmployeeOrdersConfirmPut({
    String? authorization,
    required String? order,
    String? remark,
    String? scannedoutside,
    List<int>? IMAGES,
  }) {
    final Uri $url = Uri.parse('/employee-store/employee-orders/confirm');
    final Map<String, dynamic> $params = <String, dynamic>{
      'order': order,
      'remark': remark,
      'SCANNEDOUTSIDE': scannedoutside,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>?>(
        'IMAGES',
        IMAGES,
      )
    ];
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EmployeeStoreEmployeeOrdersConfirmPut$Response,
        EmployeeStoreEmployeeOrdersConfirmPut$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreDashboardHomeGet$Response>>
      _employeeStoreDashboardHomeGet({
    String? authorization,
    required String? date,
  }) {
    final Uri $url = Uri.parse('/employee-store/dashboard/home');
    final Map<String, dynamic> $params = <String, dynamic>{'date': date};
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EmployeeStoreDashboardHomeGet$Response,
        EmployeeStoreDashboardHomeGet$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreOrdersGet$Response>> _employeeStoreOrdersGet({
    String? authorization,
    required String? page,
    required String? size,
  }) {
    final Uri $url = Uri.parse('/employee-store/orders/');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EmployeeStoreOrdersGet$Response,
        EmployeeStoreOrdersGet$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreReturnOrderGet$Response>>
      _employeeStoreReturnOrderGet({
    String? authorization,
    required String? page,
    required String? size,
  }) {
    final Uri $url = Uri.parse('/employee-store/return-order/');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EmployeeStoreReturnOrderGet$Response,
        EmployeeStoreReturnOrderGet$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreForecastGet$Response>>
      _employeeStoreForecastGet({
    String? authorization,
    required String? page,
    required String? size,
    required String? date,
  }) {
    final Uri $url = Uri.parse('/employee-store/forecast/');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'size': size,
      'date': date,
    };
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<EmployeeStoreForecastGet$Response,
        EmployeeStoreForecastGet$Response>($request);
  }

  @override
  Future<Response<EmployeeStoreForecastPost$Response>>
      _employeeStoreForecastPost({
    String? authorization,
    required EmployeeStoreForecastPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/employee-store/forecast/');
    final Map<String, String> $headers = {
      if (authorization != null) 'authorization': authorization,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<EmployeeStoreForecastPost$Response,
        EmployeeStoreForecastPost$Response>($request);
  }
}
