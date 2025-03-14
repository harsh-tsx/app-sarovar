// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;

part 'store_api.swagger.chopper.dart';
part 'store_api.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class StoreApi extends ChopperService {
  static StoreApi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$StoreApi(client);
    }

    final newClient = ChopperClient(
        services: [_$StoreApi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$StoreApi(newClient);
  }

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreAuthLoginPost$Response>>
      employeeStoreAuthLoginPost({
    String? authorization,
    required EmployeeStoreAuthLoginPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreAuthLoginPost$Response,
        () => EmployeeStoreAuthLoginPost$Response.fromJsonFactory);

    return _employeeStoreAuthLoginPost(
        authorization: authorization?.toString(), body: body);
  }

  ///
  ///@param authorization
  @Post(
    path: '/employee-store/auth/login',
    optionalBody: true,
  )
  Future<chopper.Response<EmployeeStoreAuthLoginPost$Response>>
      _employeeStoreAuthLoginPost({
    @Header('authorization') String? authorization,
    @Body() required EmployeeStoreAuthLoginPost$RequestBody? body,
  });

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreAuthEnvGet$Response>>
      employeeStoreAuthEnvGet({String? authorization}) {
    generatedMapping.putIfAbsent(EmployeeStoreAuthEnvGet$Response,
        () => EmployeeStoreAuthEnvGet$Response.fromJsonFactory);

    return _employeeStoreAuthEnvGet(authorization: authorization?.toString());
  }

  ///
  ///@param authorization
  @Get(path: '/employee-store/auth/env')
  Future<chopper.Response<EmployeeStoreAuthEnvGet$Response>>
      _employeeStoreAuthEnvGet(
          {@Header('authorization') String? authorization});

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreAuthMeGet$Response>>
      employeeStoreAuthMeGet({String? authorization}) {
    generatedMapping.putIfAbsent(EmployeeStoreAuthMeGet$Response,
        () => EmployeeStoreAuthMeGet$Response.fromJsonFactory);

    return _employeeStoreAuthMeGet(authorization: authorization?.toString());
  }

  ///
  ///@param authorization
  @Get(path: '/employee-store/auth/me')
  Future<chopper.Response<EmployeeStoreAuthMeGet$Response>>
      _employeeStoreAuthMeGet({@Header('authorization') String? authorization});

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreAuthStoreTimeGet$Response>>
      employeeStoreAuthStoreTimeGet({String? authorization}) {
    generatedMapping.putIfAbsent(EmployeeStoreAuthStoreTimeGet$Response,
        () => EmployeeStoreAuthStoreTimeGet$Response.fromJsonFactory);

    return _employeeStoreAuthStoreTimeGet(
        authorization: authorization?.toString());
  }

  ///
  ///@param authorization
  @Get(path: '/employee-store/auth/store-time')
  Future<chopper.Response<EmployeeStoreAuthStoreTimeGet$Response>>
      _employeeStoreAuthStoreTimeGet(
          {@Header('authorization') String? authorization});

  ///
  ///@param authorization
  ///@param page
  ///@param size
  Future<chopper.Response<EmployeeStoreEmployeeOrdersGet$Response>>
      employeeStoreEmployeeOrdersGet({
    String? authorization,
    required String? page,
    required String? size,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreEmployeeOrdersGet$Response,
        () => EmployeeStoreEmployeeOrdersGet$Response.fromJsonFactory);

    return _employeeStoreEmployeeOrdersGet(
        authorization: authorization?.toString(), page: page, size: size);
  }

  ///
  ///@param authorization
  ///@param page
  ///@param size
  @Get(path: '/employee-store/employee-orders/')
  Future<chopper.Response<EmployeeStoreEmployeeOrdersGet$Response>>
      _employeeStoreEmployeeOrdersGet({
    @Header('authorization') String? authorization,
    @Query('page') required String? page,
    @Query('size') required String? size,
  });

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreEmployeeOrdersPost$Response>>
      employeeStoreEmployeeOrdersPost({
    String? authorization,
    required EmployeeStoreEmployeeOrdersPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreEmployeeOrdersPost$Response,
        () => EmployeeStoreEmployeeOrdersPost$Response.fromJsonFactory);

    return _employeeStoreEmployeeOrdersPost(
        authorization: authorization?.toString(), body: body);
  }

  ///
  ///@param authorization
  @Post(
    path: '/employee-store/employee-orders/',
    optionalBody: true,
  )
  Future<chopper.Response<EmployeeStoreEmployeeOrdersPost$Response>>
      _employeeStoreEmployeeOrdersPost({
    @Header('authorization') String? authorization,
    @Body() required EmployeeStoreEmployeeOrdersPost$RequestBody? body,
  });

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreEmployeeOrdersPut$Response>>
      employeeStoreEmployeeOrdersPut({
    String? authorization,
    required EmployeeStoreEmployeeOrdersPut$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreEmployeeOrdersPut$Response,
        () => EmployeeStoreEmployeeOrdersPut$Response.fromJsonFactory);

    return _employeeStoreEmployeeOrdersPut(
        authorization: authorization?.toString(), body: body);
  }

  ///
  ///@param authorization
  @Put(
    path: '/employee-store/employee-orders/',
    optionalBody: true,
  )
  Future<chopper.Response<EmployeeStoreEmployeeOrdersPut$Response>>
      _employeeStoreEmployeeOrdersPut({
    @Header('authorization') String? authorization,
    @Body() required EmployeeStoreEmployeeOrdersPut$RequestBody? body,
  });

  ///
  ///@param authorization
  ///@param id
  Future<chopper.Response<EmployeeStoreEmployeeOrdersDelete$Response>>
      employeeStoreEmployeeOrdersDelete({
    String? authorization,
    required String? id,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreEmployeeOrdersDelete$Response,
        () => EmployeeStoreEmployeeOrdersDelete$Response.fromJsonFactory);

    return _employeeStoreEmployeeOrdersDelete(
        authorization: authorization?.toString(), id: id);
  }

  ///
  ///@param authorization
  ///@param id
  @Delete(path: '/employee-store/employee-orders/')
  Future<chopper.Response<EmployeeStoreEmployeeOrdersDelete$Response>>
      _employeeStoreEmployeeOrdersDelete({
    @Header('authorization') String? authorization,
    @Query('id') required String? id,
  });

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreEmployeeOrdersActiveOrderGet$Response>>
      employeeStoreEmployeeOrdersActiveOrderGet({String? authorization}) {
    generatedMapping.putIfAbsent(
        EmployeeStoreEmployeeOrdersActiveOrderGet$Response,
        () =>
            EmployeeStoreEmployeeOrdersActiveOrderGet$Response.fromJsonFactory);

    return _employeeStoreEmployeeOrdersActiveOrderGet(
        authorization: authorization?.toString());
  }

  ///
  ///@param authorization
  @Get(path: '/employee-store/employee-orders/active-order')
  Future<chopper.Response<EmployeeStoreEmployeeOrdersActiveOrderGet$Response>>
      _employeeStoreEmployeeOrdersActiveOrderGet(
          {@Header('authorization') String? authorization});

  ///
  ///@param authorization
  Future<
          chopper
          .Response<EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response>>
      employeeStoreEmployeeOrdersActiveReturnOrderGet({String? authorization}) {
    generatedMapping.putIfAbsent(
        EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response,
        () => EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response
            .fromJsonFactory);

    return _employeeStoreEmployeeOrdersActiveReturnOrderGet(
        authorization: authorization?.toString());
  }

  ///
  ///@param authorization
  @Get(path: '/employee-store/employee-orders/active-return-order')
  Future<
          chopper
          .Response<EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response>>
      _employeeStoreEmployeeOrdersActiveReturnOrderGet(
          {@Header('authorization') String? authorization});

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreEmployeeOrdersOutPost$Response>>
      employeeStoreEmployeeOrdersOutPost({
    String? authorization,
    required EmployeeStoreEmployeeOrdersOutPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreEmployeeOrdersOutPost$Response,
        () => EmployeeStoreEmployeeOrdersOutPost$Response.fromJsonFactory);

    return _employeeStoreEmployeeOrdersOutPost(
        authorization: authorization?.toString(), body: body);
  }

  ///
  ///@param authorization
  @Post(
    path: '/employee-store/employee-orders/out',
    optionalBody: true,
  )
  Future<chopper.Response<EmployeeStoreEmployeeOrdersOutPost$Response>>
      _employeeStoreEmployeeOrdersOutPost({
    @Header('authorization') String? authorization,
    @Body() required EmployeeStoreEmployeeOrdersOutPost$RequestBody? body,
  });

  ///
  ///@param authorization
  ///@param order
  ///@param remark
  ///@param SCANNEDOUTSIDE
  ///@param incomplete_delivery_remark
  Future<chopper.Response<EmployeeStoreEmployeeOrdersConfirmPost$Response>>
      employeeStoreEmployeeOrdersConfirmPost({
    String? authorization,
    required String? order,
    String? remark,
    String? scannedoutside,
    String? incompleteDeliveryRemark,
    List<int>? IMAGES,
  }) {
    generatedMapping.putIfAbsent(
        EmployeeStoreEmployeeOrdersConfirmPost$Response,
        () => EmployeeStoreEmployeeOrdersConfirmPost$Response.fromJsonFactory);

    return _employeeStoreEmployeeOrdersConfirmPost(
        authorization: authorization?.toString(),
        order: order,
        remark: remark,
        scannedoutside: scannedoutside,
        incompleteDeliveryRemark: incompleteDeliveryRemark,
        IMAGES: IMAGES);
  }

  ///
  ///@param authorization
  ///@param order
  ///@param remark
  ///@param SCANNEDOUTSIDE
  ///@param incomplete_delivery_remark
  @Post(
    path: '/employee-store/employee-orders/confirm',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<EmployeeStoreEmployeeOrdersConfirmPost$Response>>
      _employeeStoreEmployeeOrdersConfirmPost({
    @Header('authorization') String? authorization,
    @Query('order') required String? order,
    @Query('remark') String? remark,
    @Query('SCANNEDOUTSIDE') String? scannedoutside,
    @Query('incomplete_delivery_remark') String? incompleteDeliveryRemark,
    @PartFile() List<int>? IMAGES,
  });

  ///
  ///@param authorization
  ///@param order
  ///@param remark
  ///@param SCANNEDOUTSIDE
  Future<chopper.Response<EmployeeStoreEmployeeOrdersConfirmPut$Response>>
      employeeStoreEmployeeOrdersConfirmPut({
    String? authorization,
    required String? order,
    String? remark,
    String? scannedoutside,
    List<int>? IMAGES,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreEmployeeOrdersConfirmPut$Response,
        () => EmployeeStoreEmployeeOrdersConfirmPut$Response.fromJsonFactory);

    return _employeeStoreEmployeeOrdersConfirmPut(
        authorization: authorization?.toString(),
        order: order,
        remark: remark,
        scannedoutside: scannedoutside,
        IMAGES: IMAGES);
  }

  ///
  ///@param authorization
  ///@param order
  ///@param remark
  ///@param SCANNEDOUTSIDE
  @Put(
    path: '/employee-store/employee-orders/confirm',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<EmployeeStoreEmployeeOrdersConfirmPut$Response>>
      _employeeStoreEmployeeOrdersConfirmPut({
    @Header('authorization') String? authorization,
    @Query('order') required String? order,
    @Query('remark') String? remark,
    @Query('SCANNEDOUTSIDE') String? scannedoutside,
    @PartFile() List<int>? IMAGES,
  });

  ///
  ///@param authorization
  ///@param page
  ///@param size
  Future<chopper.Response<EmployeeStoreStoreComplaintGet$Response>>
      employeeStoreStoreComplaintGet({
    String? authorization,
    required String? page,
    required String? size,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreStoreComplaintGet$Response,
        () => EmployeeStoreStoreComplaintGet$Response.fromJsonFactory);

    return _employeeStoreStoreComplaintGet(
        authorization: authorization?.toString(), page: page, size: size);
  }

  ///
  ///@param authorization
  ///@param page
  ///@param size
  @Get(path: '/employee-store/store-complaint/')
  Future<chopper.Response<EmployeeStoreStoreComplaintGet$Response>>
      _employeeStoreStoreComplaintGet({
    @Header('authorization') String? authorization,
    @Query('page') required String? page,
    @Query('size') required String? size,
  });

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreStoreComplaintPost$Response>>
      employeeStoreStoreComplaintPost({
    String? authorization,
    required String? order,
    required String? type,
    required String? watercans,
    required String? description,
    required List<int> images,
    String? store,
    String? storeEmployee,
    num? id,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreStoreComplaintPost$Response,
        () => EmployeeStoreStoreComplaintPost$Response.fromJsonFactory);

    return _employeeStoreStoreComplaintPost(
        authorization: authorization?.toString(),
        order: order,
        type: type,
        watercans: watercans,
        description: description,
        images: images,
        store: store,
        storeEmployee: storeEmployee,
        id: id);
  }

  ///
  ///@param authorization
  @Post(
    path: '/employee-store/store-complaint/',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<EmployeeStoreStoreComplaintPost$Response>>
      _employeeStoreStoreComplaintPost({
    @Header('authorization') String? authorization,
    @Part('order') required String? order,
    @Part('type') required String? type,
    @Part('watercans') required String? watercans,
    @Part('description') required String? description,
    @PartFile() required List<int> images,
    @Part('store') String? store,
    @Part('store_employee') String? storeEmployee,
    @Part('id') num? id,
  });

  ///
  ///@param authorization
  ///@param id
  Future<chopper.Response<EmployeeStoreStoreComplaintPut$Response>>
      employeeStoreStoreComplaintPut({
    String? authorization,
    required String? id,
    required EmployeeStoreStoreComplaintPut$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreStoreComplaintPut$Response,
        () => EmployeeStoreStoreComplaintPut$Response.fromJsonFactory);

    return _employeeStoreStoreComplaintPut(
        authorization: authorization?.toString(), id: id, body: body);
  }

  ///
  ///@param authorization
  ///@param id
  @Put(
    path: '/employee-store/store-complaint/',
    optionalBody: true,
  )
  Future<chopper.Response<EmployeeStoreStoreComplaintPut$Response>>
      _employeeStoreStoreComplaintPut({
    @Header('authorization') String? authorization,
    @Query('id') required String? id,
    @Body() required EmployeeStoreStoreComplaintPut$RequestBody? body,
  });

  ///
  ///@param authorization
  ///@param id
  Future<chopper.Response<EmployeeStoreStoreComplaintDelete$Response>>
      employeeStoreStoreComplaintDelete({
    String? authorization,
    required String? id,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreStoreComplaintDelete$Response,
        () => EmployeeStoreStoreComplaintDelete$Response.fromJsonFactory);

    return _employeeStoreStoreComplaintDelete(
        authorization: authorization?.toString(), id: id);
  }

  ///
  ///@param authorization
  ///@param id
  @Delete(path: '/employee-store/store-complaint/')
  Future<chopper.Response<EmployeeStoreStoreComplaintDelete$Response>>
      _employeeStoreStoreComplaintDelete({
    @Header('authorization') String? authorization,
    @Query('id') required String? id,
  });

  ///
  ///@param authorization
  ///@param date
  Future<chopper.Response<EmployeeStoreDashboardHomeGet$Response>>
      employeeStoreDashboardHomeGet({
    String? authorization,
    required String? date,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreDashboardHomeGet$Response,
        () => EmployeeStoreDashboardHomeGet$Response.fromJsonFactory);

    return _employeeStoreDashboardHomeGet(
        authorization: authorization?.toString(), date: date);
  }

  ///
  ///@param authorization
  ///@param date
  @Get(path: '/employee-store/dashboard/home')
  Future<chopper.Response<EmployeeStoreDashboardHomeGet$Response>>
      _employeeStoreDashboardHomeGet({
    @Header('authorization') String? authorization,
    @Query('date') required String? date,
  });

  ///
  ///@param authorization
  ///@param page
  ///@param size
  Future<chopper.Response<EmployeeStoreOrdersGet$Response>>
      employeeStoreOrdersGet({
    String? authorization,
    required String? page,
    required String? size,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreOrdersGet$Response,
        () => EmployeeStoreOrdersGet$Response.fromJsonFactory);

    return _employeeStoreOrdersGet(
        authorization: authorization?.toString(), page: page, size: size);
  }

  ///
  ///@param authorization
  ///@param page
  ///@param size
  @Get(path: '/employee-store/orders/')
  Future<chopper.Response<EmployeeStoreOrdersGet$Response>>
      _employeeStoreOrdersGet({
    @Header('authorization') String? authorization,
    @Query('page') required String? page,
    @Query('size') required String? size,
  });

  ///
  ///@param authorization
  ///@param page
  ///@param size
  Future<chopper.Response<EmployeeStoreReturnOrderGet$Response>>
      employeeStoreReturnOrderGet({
    String? authorization,
    required String? page,
    required String? size,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreReturnOrderGet$Response,
        () => EmployeeStoreReturnOrderGet$Response.fromJsonFactory);

    return _employeeStoreReturnOrderGet(
        authorization: authorization?.toString(), page: page, size: size);
  }

  ///
  ///@param authorization
  ///@param page
  ///@param size
  @Get(path: '/employee-store/return-order/')
  Future<chopper.Response<EmployeeStoreReturnOrderGet$Response>>
      _employeeStoreReturnOrderGet({
    @Header('authorization') String? authorization,
    @Query('page') required String? page,
    @Query('size') required String? size,
  });

  ///
  ///@param authorization
  ///@param page
  ///@param size
  ///@param date
  Future<chopper.Response<EmployeeStoreForecastGet$Response>>
      employeeStoreForecastGet({
    String? authorization,
    required String? page,
    required String? size,
    required String? date,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreForecastGet$Response,
        () => EmployeeStoreForecastGet$Response.fromJsonFactory);

    return _employeeStoreForecastGet(
        authorization: authorization?.toString(),
        page: page,
        size: size,
        date: date);
  }

  ///
  ///@param authorization
  ///@param page
  ///@param size
  ///@param date
  @Get(path: '/employee-store/forecast/')
  Future<chopper.Response<EmployeeStoreForecastGet$Response>>
      _employeeStoreForecastGet({
    @Header('authorization') String? authorization,
    @Query('page') required String? page,
    @Query('size') required String? size,
    @Query('date') required String? date,
  });

  ///
  ///@param authorization
  Future<chopper.Response<EmployeeStoreForecastPost$Response>>
      employeeStoreForecastPost({
    String? authorization,
    required EmployeeStoreForecastPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(EmployeeStoreForecastPost$Response,
        () => EmployeeStoreForecastPost$Response.fromJsonFactory);

    return _employeeStoreForecastPost(
        authorization: authorization?.toString(), body: body);
  }

  ///
  ///@param authorization
  @Post(
    path: '/employee-store/forecast/',
    optionalBody: true,
  )
  Future<chopper.Response<EmployeeStoreForecastPost$Response>>
      _employeeStoreForecastPost({
    @Header('authorization') String? authorization,
    @Body() required EmployeeStoreForecastPost$RequestBody? body,
  });
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthLoginPost$RequestBody {
  const EmployeeStoreAuthLoginPost$RequestBody({
    required this.id,
    required this.password,
  });

  factory EmployeeStoreAuthLoginPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthLoginPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$EmployeeStoreAuthLoginPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthLoginPost$RequestBodyToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory =
      _$EmployeeStoreAuthLoginPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthLoginPost$RequestBody &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthLoginPost$RequestBodyExtension
    on EmployeeStoreAuthLoginPost$RequestBody {
  EmployeeStoreAuthLoginPost$RequestBody copyWith(
      {String? id, String? password}) {
    return EmployeeStoreAuthLoginPost$RequestBody(
        id: id ?? this.id, password: password ?? this.password);
  }

  EmployeeStoreAuthLoginPost$RequestBody copyWithWrapped(
      {Wrapped<String>? id, Wrapped<String>? password}) {
    return EmployeeStoreAuthLoginPost$RequestBody(
        id: (id != null ? id.value : this.id),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$RequestBody {
  const EmployeeStoreEmployeeOrdersPost$RequestBody({
    required this.watercan,
    this.store,
    this.type,
    this.order,
    this.forecast,
  });

  factory EmployeeStoreEmployeeOrdersPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$RequestBodyToJson(this);

  @JsonKey(name: 'watercan')
  final String watercan;
  @JsonKey(name: 'store')
  final dynamic store;
  @JsonKey(name: 'type')
  final dynamic type;
  @JsonKey(name: 'order')
  final dynamic order;
  @JsonKey(name: 'forecast')
  final dynamic forecast;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$RequestBody &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(forecast) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$RequestBodyExtension
    on EmployeeStoreEmployeeOrdersPost$RequestBody {
  EmployeeStoreEmployeeOrdersPost$RequestBody copyWith(
      {String? watercan,
      dynamic store,
      dynamic type,
      dynamic order,
      dynamic forecast}) {
    return EmployeeStoreEmployeeOrdersPost$RequestBody(
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        type: type ?? this.type,
        order: order ?? this.order,
        forecast: forecast ?? this.forecast);
  }

  EmployeeStoreEmployeeOrdersPost$RequestBody copyWithWrapped(
      {Wrapped<String>? watercan,
      Wrapped<dynamic>? store,
      Wrapped<dynamic>? type,
      Wrapped<dynamic>? order,
      Wrapped<dynamic>? forecast}) {
    return EmployeeStoreEmployeeOrdersPost$RequestBody(
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        forecast: (forecast != null ? forecast.value : this.forecast));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$RequestBody {
  const EmployeeStoreEmployeeOrdersPut$RequestBody({
    required this.watercan,
    this.store,
    this.type,
    this.order,
    this.forecast,
  });

  factory EmployeeStoreEmployeeOrdersPut$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$RequestBodyToJson(this);

  @JsonKey(name: 'watercan')
  final String watercan;
  @JsonKey(name: 'store')
  final dynamic store;
  @JsonKey(name: 'type')
  final dynamic type;
  @JsonKey(name: 'order')
  final dynamic order;
  @JsonKey(name: 'forecast')
  final dynamic forecast;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$RequestBody &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(forecast) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$RequestBodyExtension
    on EmployeeStoreEmployeeOrdersPut$RequestBody {
  EmployeeStoreEmployeeOrdersPut$RequestBody copyWith(
      {String? watercan,
      dynamic store,
      dynamic type,
      dynamic order,
      dynamic forecast}) {
    return EmployeeStoreEmployeeOrdersPut$RequestBody(
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        type: type ?? this.type,
        order: order ?? this.order,
        forecast: forecast ?? this.forecast);
  }

  EmployeeStoreEmployeeOrdersPut$RequestBody copyWithWrapped(
      {Wrapped<String>? watercan,
      Wrapped<dynamic>? store,
      Wrapped<dynamic>? type,
      Wrapped<dynamic>? order,
      Wrapped<dynamic>? forecast}) {
    return EmployeeStoreEmployeeOrdersPut$RequestBody(
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        forecast: (forecast != null ? forecast.value : this.forecast));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$RequestBody {
  const EmployeeStoreEmployeeOrdersOutPost$RequestBody({
    required this.watercans,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$RequestBodyToJson(this);

  @JsonKey(name: 'watercans')
  final double watercans;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$RequestBody &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(watercans) ^ runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$RequestBodyExtension
    on EmployeeStoreEmployeeOrdersOutPost$RequestBody {
  EmployeeStoreEmployeeOrdersOutPost$RequestBody copyWith({double? watercans}) {
    return EmployeeStoreEmployeeOrdersOutPost$RequestBody(
        watercans: watercans ?? this.watercans);
  }

  EmployeeStoreEmployeeOrdersOutPost$RequestBody copyWithWrapped(
      {Wrapped<double>? watercans}) {
    return EmployeeStoreEmployeeOrdersOutPost$RequestBody(
        watercans: (watercans != null ? watercans.value : this.watercans));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$RequestBody {
  const EmployeeStoreEmployeeOrdersConfirmPost$RequestBody({
    this.images,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$RequestBodyToJson(this);

  @JsonKey(name: 'IMAGES')
  final Object? images;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$RequestBody &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(images) ^ runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$RequestBodyExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$RequestBody {
  EmployeeStoreEmployeeOrdersConfirmPost$RequestBody copyWith(
      {Object? images}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$RequestBody(
        images: images ?? this.images);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$RequestBody copyWithWrapped(
      {Wrapped<Object?>? images}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$RequestBody(
        images: (images != null ? images.value : this.images));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$RequestBody {
  const EmployeeStoreEmployeeOrdersConfirmPut$RequestBody({
    this.images,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$RequestBodyToJson(this);

  @JsonKey(name: 'IMAGES')
  final Object? images;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$RequestBody &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(images) ^ runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$RequestBodyExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$RequestBody {
  EmployeeStoreEmployeeOrdersConfirmPut$RequestBody copyWith({Object? images}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$RequestBody(
        images: images ?? this.images);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$RequestBody copyWithWrapped(
      {Wrapped<Object?>? images}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$RequestBody(
        images: (images != null ? images.value : this.images));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintPost$RequestBody {
  const EmployeeStoreStoreComplaintPost$RequestBody({
    required this.order,
    required this.type,
    required this.watercans,
    required this.description,
    required this.images,
    this.store,
    this.storeEmployee,
    this.id,
  });

  factory EmployeeStoreStoreComplaintPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreStoreComplaintPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintPost$RequestBodyToJson(this);

  @JsonKey(name: 'order')
  final String order;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'watercans')
  final String watercans;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'images')
  final Object images;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'store_employee')
  final String? storeEmployee;
  @JsonKey(name: 'id')
  final double? id;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintPost$RequestBody &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.storeEmployee, storeEmployee) ||
                const DeepCollectionEquality()
                    .equals(other.storeEmployee, storeEmployee)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(storeEmployee) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintPost$RequestBodyExtension
    on EmployeeStoreStoreComplaintPost$RequestBody {
  EmployeeStoreStoreComplaintPost$RequestBody copyWith(
      {String? order,
      String? type,
      String? watercans,
      String? description,
      Object? images,
      String? store,
      String? storeEmployee,
      double? id}) {
    return EmployeeStoreStoreComplaintPost$RequestBody(
        order: order ?? this.order,
        type: type ?? this.type,
        watercans: watercans ?? this.watercans,
        description: description ?? this.description,
        images: images ?? this.images,
        store: store ?? this.store,
        storeEmployee: storeEmployee ?? this.storeEmployee,
        id: id ?? this.id);
  }

  EmployeeStoreStoreComplaintPost$RequestBody copyWithWrapped(
      {Wrapped<String>? order,
      Wrapped<String>? type,
      Wrapped<String>? watercans,
      Wrapped<String>? description,
      Wrapped<Object>? images,
      Wrapped<String?>? store,
      Wrapped<String?>? storeEmployee,
      Wrapped<double?>? id}) {
    return EmployeeStoreStoreComplaintPost$RequestBody(
        order: (order != null ? order.value : this.order),
        type: (type != null ? type.value : this.type),
        watercans: (watercans != null ? watercans.value : this.watercans),
        description:
            (description != null ? description.value : this.description),
        images: (images != null ? images.value : this.images),
        store: (store != null ? store.value : this.store),
        storeEmployee:
            (storeEmployee != null ? storeEmployee.value : this.storeEmployee),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintPut$RequestBody {
  const EmployeeStoreStoreComplaintPut$RequestBody({
    required this.watercans,
    required this.date,
    required this.store,
    this.storeAdminApproval,
  });

  factory EmployeeStoreStoreComplaintPut$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintPut$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreStoreComplaintPut$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintPut$RequestBodyToJson(this);

  @JsonKey(name: 'watercans')
  final int watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final String store;
  @JsonKey(name: 'store_admin_approval')
  final bool? storeAdminApproval;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintPut$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintPut$RequestBody &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintPut$RequestBodyExtension
    on EmployeeStoreStoreComplaintPut$RequestBody {
  EmployeeStoreStoreComplaintPut$RequestBody copyWith(
      {int? watercans, String? date, String? store, bool? storeAdminApproval}) {
    return EmployeeStoreStoreComplaintPut$RequestBody(
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval);
  }

  EmployeeStoreStoreComplaintPut$RequestBody copyWithWrapped(
      {Wrapped<int>? watercans,
      Wrapped<String>? date,
      Wrapped<String>? store,
      Wrapped<bool?>? storeAdminApproval}) {
    return EmployeeStoreStoreComplaintPut$RequestBody(
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreForecastPost$RequestBody {
  const EmployeeStoreForecastPost$RequestBody({
    required this.watercans,
    required this.date,
  });

  factory EmployeeStoreForecastPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreForecastPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$EmployeeStoreForecastPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreForecastPost$RequestBodyToJson(this);

  @JsonKey(name: 'watercans')
  final int watercans;
  @JsonKey(name: 'date')
  final String date;
  static const fromJsonFactory =
      _$EmployeeStoreForecastPost$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreForecastPost$RequestBody &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreForecastPost$RequestBodyExtension
    on EmployeeStoreForecastPost$RequestBody {
  EmployeeStoreForecastPost$RequestBody copyWith(
      {int? watercans, String? date}) {
    return EmployeeStoreForecastPost$RequestBody(
        watercans: watercans ?? this.watercans, date: date ?? this.date);
  }

  EmployeeStoreForecastPost$RequestBody copyWithWrapped(
      {Wrapped<int>? watercans, Wrapped<String>? date}) {
    return EmployeeStoreForecastPost$RequestBody(
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthLoginPost$Response {
  const EmployeeStoreAuthLoginPost$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreAuthLoginPost$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthLoginPost$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreAuthLoginPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthLoginPost$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreAuthLoginPost$Response$Data? data;
  static const fromJsonFactory = _$EmployeeStoreAuthLoginPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthLoginPost$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthLoginPost$ResponseExtension
    on EmployeeStoreAuthLoginPost$Response {
  EmployeeStoreAuthLoginPost$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreAuthLoginPost$Response$Data? data}) {
    return EmployeeStoreAuthLoginPost$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreAuthLoginPost$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreAuthLoginPost$Response$Data?>? data}) {
    return EmployeeStoreAuthLoginPost$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthEnvGet$Response {
  const EmployeeStoreAuthEnvGet$Response({
    required this.status,
    required this.message,
    required this.data,
  });

  factory EmployeeStoreAuthEnvGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthEnvGet$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreAuthEnvGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthEnvGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<EmployeeStoreAuthEnvGet$Response$Data$Item> data;
  static const fromJsonFactory = _$EmployeeStoreAuthEnvGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthEnvGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthEnvGet$ResponseExtension
    on EmployeeStoreAuthEnvGet$Response {
  EmployeeStoreAuthEnvGet$Response copyWith(
      {bool? status,
      String? message,
      List<EmployeeStoreAuthEnvGet$Response$Data$Item>? data}) {
    return EmployeeStoreAuthEnvGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreAuthEnvGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<List<EmployeeStoreAuthEnvGet$Response$Data$Item>>? data}) {
    return EmployeeStoreAuthEnvGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthMeGet$Response {
  const EmployeeStoreAuthMeGet$Response({
    required this.status,
    required this.message,
    required this.data,
  });

  factory EmployeeStoreAuthMeGet$Response.fromJson(Map<String, dynamic> json) =>
      _$EmployeeStoreAuthMeGet$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreAuthMeGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthMeGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreAuthMeGet$Response$Data data;
  static const fromJsonFactory = _$EmployeeStoreAuthMeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthMeGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthMeGet$ResponseExtension
    on EmployeeStoreAuthMeGet$Response {
  EmployeeStoreAuthMeGet$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreAuthMeGet$Response$Data? data}) {
    return EmployeeStoreAuthMeGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreAuthMeGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreAuthMeGet$Response$Data>? data}) {
    return EmployeeStoreAuthMeGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthStoreTimeGet$Response {
  const EmployeeStoreAuthStoreTimeGet$Response({
    required this.status,
    required this.message,
    required this.data,
  });

  factory EmployeeStoreAuthStoreTimeGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthStoreTimeGet$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreAuthStoreTimeGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthStoreTimeGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<EmployeeStoreAuthStoreTimeGet$Response$Data$Item> data;
  static const fromJsonFactory =
      _$EmployeeStoreAuthStoreTimeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthStoreTimeGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthStoreTimeGet$ResponseExtension
    on EmployeeStoreAuthStoreTimeGet$Response {
  EmployeeStoreAuthStoreTimeGet$Response copyWith(
      {bool? status,
      String? message,
      List<EmployeeStoreAuthStoreTimeGet$Response$Data$Item>? data}) {
    return EmployeeStoreAuthStoreTimeGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreAuthStoreTimeGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<List<EmployeeStoreAuthStoreTimeGet$Response$Data$Item>>? data}) {
    return EmployeeStoreAuthStoreTimeGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response {
  const EmployeeStoreEmployeeOrdersGet$Response({
    required this.status,
    required this.message,
    required this.data,
    required this.meta,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreEmployeeOrdersGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<EmployeeStoreEmployeeOrdersGet$Response$Data$Item> data;
  @JsonKey(name: 'meta')
  final EmployeeStoreEmployeeOrdersGet$Response$Meta meta;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$ResponseExtension
    on EmployeeStoreEmployeeOrdersGet$Response {
  EmployeeStoreEmployeeOrdersGet$Response copyWith(
      {bool? status,
      String? message,
      List<EmployeeStoreEmployeeOrdersGet$Response$Data$Item>? data,
      EmployeeStoreEmployeeOrdersGet$Response$Meta? meta}) {
    return EmployeeStoreEmployeeOrdersGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
        meta: meta ?? this.meta);
  }

  EmployeeStoreEmployeeOrdersGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<List<EmployeeStoreEmployeeOrdersGet$Response$Data$Item>>? data,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Meta>? meta}) {
    return EmployeeStoreEmployeeOrdersGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response {
  const EmployeeStoreEmployeeOrdersPost$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreEmployeeOrdersPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreEmployeeOrdersPost$Response$Data? data;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$ResponseExtension
    on EmployeeStoreEmployeeOrdersPost$Response {
  EmployeeStoreEmployeeOrdersPost$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreEmployeeOrdersPost$Response$Data? data}) {
    return EmployeeStoreEmployeeOrdersPost$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreEmployeeOrdersPost$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data?>? data}) {
    return EmployeeStoreEmployeeOrdersPost$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response {
  const EmployeeStoreEmployeeOrdersPut$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreEmployeeOrdersPut$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreEmployeeOrdersPut$Response$Data? data;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$ResponseExtension
    on EmployeeStoreEmployeeOrdersPut$Response {
  EmployeeStoreEmployeeOrdersPut$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreEmployeeOrdersPut$Response$Data? data}) {
    return EmployeeStoreEmployeeOrdersPut$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreEmployeeOrdersPut$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data?>? data}) {
    return EmployeeStoreEmployeeOrdersPut$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response {
  const EmployeeStoreEmployeeOrdersDelete$Response({
    required this.status,
    required this.message,
    required this.data,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$ResponseFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data data;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$ResponseExtension
    on EmployeeStoreEmployeeOrdersDelete$Response {
  EmployeeStoreEmployeeOrdersDelete$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreEmployeeOrdersDelete$Response$Data? data}) {
    return EmployeeStoreEmployeeOrdersDelete$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreEmployeeOrdersDelete$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data>? data}) {
    return EmployeeStoreEmployeeOrdersDelete$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveOrderGet$Response {
  const EmployeeStoreEmployeeOrdersActiveOrderGet$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreEmployeeOrdersActiveOrderGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data? data;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveOrderGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveOrderGet$ResponseExtension
    on EmployeeStoreEmployeeOrdersActiveOrderGet$Response {
  EmployeeStoreEmployeeOrdersActiveOrderGet$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data? data}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreEmployeeOrdersActiveOrderGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data?>?
          data}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response {
  const EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$ResponseFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data? data;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveReturnOrderGet$ResponseExtension
    on EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response {
  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data? data}) {
    return EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data?>?
          data}) {
    return EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response {
  const EmployeeStoreEmployeeOrdersOutPost$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data? data;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$ResponseExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response {
  EmployeeStoreEmployeeOrdersOutPost$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data? data}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data?>? data}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$ResponseFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data? data;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$ResponseExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response {
  EmployeeStoreEmployeeOrdersConfirmPost$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data? data}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data?>? data}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$ResponseFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data? data;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$ResponseExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response {
  EmployeeStoreEmployeeOrdersConfirmPut$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data? data}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data?>? data}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintGet$Response {
  const EmployeeStoreStoreComplaintGet$Response({
    required this.status,
    required this.message,
    this.data,
    required this.meta,
  });

  factory EmployeeStoreStoreComplaintGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintGet$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreStoreComplaintGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<EmployeeStoreStoreComplaintGet$Response$Data$Item>? data;
  @JsonKey(name: 'meta')
  final EmployeeStoreStoreComplaintGet$Response$Meta meta;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintGet$ResponseExtension
    on EmployeeStoreStoreComplaintGet$Response {
  EmployeeStoreStoreComplaintGet$Response copyWith(
      {bool? status,
      String? message,
      List<EmployeeStoreStoreComplaintGet$Response$Data$Item>? data,
      EmployeeStoreStoreComplaintGet$Response$Meta? meta}) {
    return EmployeeStoreStoreComplaintGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
        meta: meta ?? this.meta);
  }

  EmployeeStoreStoreComplaintGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<List<EmployeeStoreStoreComplaintGet$Response$Data$Item>?>? data,
      Wrapped<EmployeeStoreStoreComplaintGet$Response$Meta>? meta}) {
    return EmployeeStoreStoreComplaintGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintPost$Response {
  const EmployeeStoreStoreComplaintPost$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreStoreComplaintPost$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintPost$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreStoreComplaintPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintPost$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreStoreComplaintPost$Response$Data? data;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintPost$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintPost$ResponseExtension
    on EmployeeStoreStoreComplaintPost$Response {
  EmployeeStoreStoreComplaintPost$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreStoreComplaintPost$Response$Data? data}) {
    return EmployeeStoreStoreComplaintPost$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreStoreComplaintPost$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreStoreComplaintPost$Response$Data?>? data}) {
    return EmployeeStoreStoreComplaintPost$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintPut$Response {
  const EmployeeStoreStoreComplaintPut$Response({
    required this.status,
    required this.message,
    required this.data,
  });

  factory EmployeeStoreStoreComplaintPut$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintPut$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreStoreComplaintPut$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintPut$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreStoreComplaintPut$Response$Data data;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintPut$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintPut$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintPut$ResponseExtension
    on EmployeeStoreStoreComplaintPut$Response {
  EmployeeStoreStoreComplaintPut$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreStoreComplaintPut$Response$Data? data}) {
    return EmployeeStoreStoreComplaintPut$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreStoreComplaintPut$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreStoreComplaintPut$Response$Data>? data}) {
    return EmployeeStoreStoreComplaintPut$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintDelete$Response {
  const EmployeeStoreStoreComplaintDelete$Response({
    required this.status,
    required this.message,
    required this.data,
  });

  factory EmployeeStoreStoreComplaintDelete$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintDelete$ResponseFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreStoreComplaintDelete$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintDelete$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreStoreComplaintDelete$Response$Data data;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintDelete$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintDelete$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintDelete$ResponseExtension
    on EmployeeStoreStoreComplaintDelete$Response {
  EmployeeStoreStoreComplaintDelete$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreStoreComplaintDelete$Response$Data? data}) {
    return EmployeeStoreStoreComplaintDelete$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreStoreComplaintDelete$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreStoreComplaintDelete$Response$Data>? data}) {
    return EmployeeStoreStoreComplaintDelete$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreDashboardHomeGet$Response {
  const EmployeeStoreDashboardHomeGet$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreDashboardHomeGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreDashboardHomeGet$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreDashboardHomeGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreDashboardHomeGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreDashboardHomeGet$Response$Data? data;
  static const fromJsonFactory =
      _$EmployeeStoreDashboardHomeGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreDashboardHomeGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreDashboardHomeGet$ResponseExtension
    on EmployeeStoreDashboardHomeGet$Response {
  EmployeeStoreDashboardHomeGet$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreDashboardHomeGet$Response$Data? data}) {
    return EmployeeStoreDashboardHomeGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreDashboardHomeGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreDashboardHomeGet$Response$Data?>? data}) {
    return EmployeeStoreDashboardHomeGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreOrdersGet$Response {
  const EmployeeStoreOrdersGet$Response({
    required this.status,
    required this.message,
    this.data,
    required this.meta,
  });

  factory EmployeeStoreOrdersGet$Response.fromJson(Map<String, dynamic> json) =>
      _$EmployeeStoreOrdersGet$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreOrdersGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreOrdersGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<EmployeeStoreOrdersGet$Response$Data$Item>? data;
  @JsonKey(name: 'meta')
  final EmployeeStoreOrdersGet$Response$Meta meta;
  static const fromJsonFactory = _$EmployeeStoreOrdersGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreOrdersGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreOrdersGet$ResponseExtension
    on EmployeeStoreOrdersGet$Response {
  EmployeeStoreOrdersGet$Response copyWith(
      {bool? status,
      String? message,
      List<EmployeeStoreOrdersGet$Response$Data$Item>? data,
      EmployeeStoreOrdersGet$Response$Meta? meta}) {
    return EmployeeStoreOrdersGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
        meta: meta ?? this.meta);
  }

  EmployeeStoreOrdersGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<List<EmployeeStoreOrdersGet$Response$Data$Item>?>? data,
      Wrapped<EmployeeStoreOrdersGet$Response$Meta>? meta}) {
    return EmployeeStoreOrdersGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreReturnOrderGet$Response {
  const EmployeeStoreReturnOrderGet$Response({
    required this.status,
    required this.message,
    this.data,
    required this.meta,
  });

  factory EmployeeStoreReturnOrderGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreReturnOrderGet$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreReturnOrderGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreReturnOrderGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<EmployeeStoreReturnOrderGet$Response$Data$Item>? data;
  @JsonKey(name: 'meta')
  final EmployeeStoreReturnOrderGet$Response$Meta meta;
  static const fromJsonFactory = _$EmployeeStoreReturnOrderGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreReturnOrderGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreReturnOrderGet$ResponseExtension
    on EmployeeStoreReturnOrderGet$Response {
  EmployeeStoreReturnOrderGet$Response copyWith(
      {bool? status,
      String? message,
      List<EmployeeStoreReturnOrderGet$Response$Data$Item>? data,
      EmployeeStoreReturnOrderGet$Response$Meta? meta}) {
    return EmployeeStoreReturnOrderGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
        meta: meta ?? this.meta);
  }

  EmployeeStoreReturnOrderGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<List<EmployeeStoreReturnOrderGet$Response$Data$Item>?>? data,
      Wrapped<EmployeeStoreReturnOrderGet$Response$Meta>? meta}) {
    return EmployeeStoreReturnOrderGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreForecastGet$Response {
  const EmployeeStoreForecastGet$Response({
    required this.status,
    required this.message,
    this.data,
    required this.meta,
  });

  factory EmployeeStoreForecastGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreForecastGet$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreForecastGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreForecastGet$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<EmployeeStoreForecastGet$Response$Data$Item>? data;
  @JsonKey(name: 'meta')
  final EmployeeStoreForecastGet$Response$Meta meta;
  static const fromJsonFactory = _$EmployeeStoreForecastGet$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreForecastGet$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreForecastGet$ResponseExtension
    on EmployeeStoreForecastGet$Response {
  EmployeeStoreForecastGet$Response copyWith(
      {bool? status,
      String? message,
      List<EmployeeStoreForecastGet$Response$Data$Item>? data,
      EmployeeStoreForecastGet$Response$Meta? meta}) {
    return EmployeeStoreForecastGet$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
        meta: meta ?? this.meta);
  }

  EmployeeStoreForecastGet$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<List<EmployeeStoreForecastGet$Response$Data$Item>?>? data,
      Wrapped<EmployeeStoreForecastGet$Response$Meta>? meta}) {
    return EmployeeStoreForecastGet$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreForecastPost$Response {
  const EmployeeStoreForecastPost$Response({
    required this.status,
    required this.message,
    this.data,
  });

  factory EmployeeStoreForecastPost$Response.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreForecastPost$ResponseFromJson(json);

  static const toJsonFactory = _$EmployeeStoreForecastPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreForecastPost$ResponseToJson(this);

  @JsonKey(name: 'status')
  final bool status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final EmployeeStoreForecastPost$Response$Data? data;
  static const fromJsonFactory = _$EmployeeStoreForecastPost$ResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreForecastPost$Response &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreForecastPost$ResponseExtension
    on EmployeeStoreForecastPost$Response {
  EmployeeStoreForecastPost$Response copyWith(
      {bool? status,
      String? message,
      EmployeeStoreForecastPost$Response$Data? data}) {
    return EmployeeStoreForecastPost$Response(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data);
  }

  EmployeeStoreForecastPost$Response copyWithWrapped(
      {Wrapped<bool>? status,
      Wrapped<String>? message,
      Wrapped<EmployeeStoreForecastPost$Response$Data?>? data}) {
    return EmployeeStoreForecastPost$Response(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthLoginPost$Response$Data {
  const EmployeeStoreAuthLoginPost$Response$Data({
    this.id,
    this.$id,
    this.name,
    this.token,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.store,
    this.status,
  });

  factory EmployeeStoreAuthLoginPost$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthLoginPost$Response$DataFromJson(json);

  static const toJsonFactory = _$EmployeeStoreAuthLoginPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthLoginPost$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final String? $id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'store')
  final EmployeeStoreAuthLoginPost$Response$Data$Store? store;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$EmployeeStoreAuthLoginPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthLoginPost$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthLoginPost$Response$DataExtension
    on EmployeeStoreAuthLoginPost$Response$Data {
  EmployeeStoreAuthLoginPost$Response$Data copyWith(
      {String? id,
      String? $id,
      String? name,
      String? token,
      String? password,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreAuthLoginPost$Response$Data$Store? store,
      String? status}) {
    return EmployeeStoreAuthLoginPost$Response$Data(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        token: token ?? this.token,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        store: store ?? this.store,
        status: status ?? this.status);
  }

  EmployeeStoreAuthLoginPost$Response$Data copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? $id,
      Wrapped<String?>? name,
      Wrapped<String?>? token,
      Wrapped<String?>? password,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<EmployeeStoreAuthLoginPost$Response$Data$Store?>? store,
      Wrapped<String?>? status}) {
    return EmployeeStoreAuthLoginPost$Response$Data(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        token: (token != null ? token.value : this.token),
        password: (password != null ? password.value : this.password),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthEnvGet$Response$Data$Item {
  const EmployeeStoreAuthEnvGet$Response$Data$Item({
    required this.name,
    required this.url,
  });

  factory EmployeeStoreAuthEnvGet$Response$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthEnvGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreAuthEnvGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthEnvGet$Response$Data$ItemToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'url')
  final String url;
  static const fromJsonFactory =
      _$EmployeeStoreAuthEnvGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthEnvGet$Response$Data$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthEnvGet$Response$Data$ItemExtension
    on EmployeeStoreAuthEnvGet$Response$Data$Item {
  EmployeeStoreAuthEnvGet$Response$Data$Item copyWith(
      {String? name, String? url}) {
    return EmployeeStoreAuthEnvGet$Response$Data$Item(
        name: name ?? this.name, url: url ?? this.url);
  }

  EmployeeStoreAuthEnvGet$Response$Data$Item copyWithWrapped(
      {Wrapped<String>? name, Wrapped<String>? url}) {
    return EmployeeStoreAuthEnvGet$Response$Data$Item(
        name: (name != null ? name.value : this.name),
        url: (url != null ? url.value : this.url));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthMeGet$Response$Data {
  const EmployeeStoreAuthMeGet$Response$Data({
    this.id,
    this.$id,
    this.name,
    this.token,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.store,
    this.status,
  });

  factory EmployeeStoreAuthMeGet$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthMeGet$Response$DataFromJson(json);

  static const toJsonFactory = _$EmployeeStoreAuthMeGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthMeGet$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final String? $id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'store')
  final EmployeeStoreAuthMeGet$Response$Data$Store? store;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory = _$EmployeeStoreAuthMeGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthMeGet$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthMeGet$Response$DataExtension
    on EmployeeStoreAuthMeGet$Response$Data {
  EmployeeStoreAuthMeGet$Response$Data copyWith(
      {String? id,
      String? $id,
      String? name,
      String? token,
      String? password,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreAuthMeGet$Response$Data$Store? store,
      String? status}) {
    return EmployeeStoreAuthMeGet$Response$Data(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        token: token ?? this.token,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        store: store ?? this.store,
        status: status ?? this.status);
  }

  EmployeeStoreAuthMeGet$Response$Data copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? $id,
      Wrapped<String?>? name,
      Wrapped<String?>? token,
      Wrapped<String?>? password,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<EmployeeStoreAuthMeGet$Response$Data$Store?>? store,
      Wrapped<String?>? status}) {
    return EmployeeStoreAuthMeGet$Response$Data(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        token: (token != null ? token.value : this.token),
        password: (password != null ? password.value : this.password),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthStoreTimeGet$Response$Data$Item {
  const EmployeeStoreAuthStoreTimeGet$Response$Data$Item({
    this.id,
    this.$id,
    this.store,
    this.from,
    this.to,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreAuthStoreTimeGet$Response$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthStoreTimeGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreAuthStoreTimeGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthStoreTimeGet$Response$Data$ItemToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'from')
  final double? from;
  @JsonKey(name: 'to')
  final double? to;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreAuthStoreTimeGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthStoreTimeGet$Response$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthStoreTimeGet$Response$Data$ItemExtension
    on EmployeeStoreAuthStoreTimeGet$Response$Data$Item {
  EmployeeStoreAuthStoreTimeGet$Response$Data$Item copyWith(
      {String? id,
      double? $id,
      String? store,
      double? from,
      double? to,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreAuthStoreTimeGet$Response$Data$Item(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        store: store ?? this.store,
        from: from ?? this.from,
        to: to ?? this.to,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreAuthStoreTimeGet$Response$Data$Item copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? store,
      Wrapped<double?>? from,
      Wrapped<double?>? to,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt}) {
    return EmployeeStoreAuthStoreTimeGet$Response$Data$Item(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        store: (store != null ? store.value : this.store),
        from: (from != null ? from.value : this.from),
        to: (to != null ? to.value : this.to),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item({
    required this.id,
    required this.type,
    required this.order,
    required this.employee,
    required this.watercan,
    required this.store,
    required this.forecast,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$ItemToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'order')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order order;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee employee;
  @JsonKey(name: 'watercan')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan watercan;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast forecast;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$ItemExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item copyWith(
      {String? id,
      String? type,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order? order,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee? employee,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan? watercan,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store? store,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast? forecast,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item(
        id: id ?? this.id,
        type: type ?? this.type,
        order: order ?? this.order,
        employee: employee ?? this.employee,
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order>? order,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee>?
          employee,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan>?
          watercan,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store>? store,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast>?
          forecast,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        employee: (employee != null ? employee.value : this.employee),
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Meta {
  const EmployeeStoreEmployeeOrdersGet$Response$Meta({
    required this.pages,
    required this.total,
    required this.page,
    required this.size,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Meta.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$MetaFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$MetaToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$MetaToJson(this);

  @JsonKey(name: 'pages')
  final double pages;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'size')
  final double size;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$MetaFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Meta &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pages) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$MetaExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Meta {
  EmployeeStoreEmployeeOrdersGet$Response$Meta copyWith(
      {double? pages, double? total, double? page, double? size}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Meta(
        pages: pages ?? this.pages,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Meta copyWithWrapped(
      {Wrapped<double>? pages,
      Wrapped<double>? total,
      Wrapped<double>? page,
      Wrapped<double>? size}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Meta(
        pages: (pages != null ? pages.value : this.pages),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data {
  const EmployeeStoreEmployeeOrdersPost$Response$Data({
    required this.id,
    required this.type,
    required this.order,
    required this.employee,
    required this.watercan,
    required this.store,
    required this.forecast,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'order')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order order;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Employee employee;
  @JsonKey(name: 'watercan')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan watercan;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast forecast;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$DataExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data {
  EmployeeStoreEmployeeOrdersPost$Response$Data copyWith(
      {String? id,
      String? type,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order? order,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Employee? employee,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan? watercan,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Store? store,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast? forecast,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data(
        id: id ?? this.id,
        type: type ?? this.type,
        order: order ?? this.order,
        employee: employee ?? this.employee,
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order>? order,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Employee>? employee,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan>? watercan,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Store>? store,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast>? forecast,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        employee: (employee != null ? employee.value : this.employee),
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data {
  const EmployeeStoreEmployeeOrdersPut$Response$Data({
    required this.id,
    required this.type,
    required this.order,
    required this.employee,
    required this.watercan,
    required this.store,
    required this.forecast,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'order')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order order;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Employee employee;
  @JsonKey(name: 'watercan')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan watercan;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast forecast;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$DataExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data {
  EmployeeStoreEmployeeOrdersPut$Response$Data copyWith(
      {String? id,
      String? type,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order? order,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Employee? employee,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan? watercan,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Store? store,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast? forecast,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data(
        id: id ?? this.id,
        type: type ?? this.type,
        order: order ?? this.order,
        employee: employee ?? this.employee,
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order>? order,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Employee>? employee,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan>? watercan,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Store>? store,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast>? forecast,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        employee: (employee != null ? employee.value : this.employee),
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data({
    required this.id,
    required this.type,
    required this.order,
    required this.employee,
    required this.watercan,
    required this.store,
    required this.forecast,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'order')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order order;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee employee;
  @JsonKey(name: 'watercan')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan watercan;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast forecast;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$DataExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data {
  EmployeeStoreEmployeeOrdersDelete$Response$Data copyWith(
      {String? id,
      String? type,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order? order,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee? employee,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan? watercan,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Store? store,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast? forecast,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data(
        id: id ?? this.id,
        type: type ?? this.type,
        order: order ?? this.order,
        employee: employee ?? this.employee,
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order>? order,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee>?
          employee,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan>?
          watercan,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Store>? store,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast>?
          forecast,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        employee: (employee != null ? employee.value : this.employee),
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data {
  const EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data({
    this.id,
    this.watercans,
    this.date,
    this.status,
    this.store,
    this.forecast,
    this.createdAt,
    this.updatedAt,
    this.employeeOrder,
  });

  factory EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store? store;
  @JsonKey(name: 'forecast')
  final String? forecast;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'employee_order')
  final List<
          EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item>?
      employeeOrder;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.employeeOrder, employeeOrder) ||
                const DeepCollectionEquality()
                    .equals(other.employeeOrder, employeeOrder)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(employeeOrder) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveOrderGet$Response$DataExtension
    on EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data {
  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store? store,
      String? forecast,
      String? createdAt,
      String? updatedAt,
      List<EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item>?
          employeeOrder}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        employeeOrder: employeeOrder ?? this.employeeOrder);
  }

  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? watercans,
      Wrapped<String?>? date,
      Wrapped<String?>? status,
      Wrapped<EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store?>?
          store,
      Wrapped<String?>? forecast,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<
              List<
                  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item>?>?
          employeeOrder}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        employeeOrder:
            (employeeOrder != null ? employeeOrder.value : this.employeeOrder));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data {
  const EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data({
    this.id,
    this.watercans,
    this.date,
    this.status,
    this.store,
    this.forecast,
    this.createdAt,
    this.updatedAt,
    this.employeeOrder,
  });

  factory EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$DataFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$DataToJson(
          this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'forecast')
  final String? forecast;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'employee_order')
  final List<
          EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item>?
      employeeOrder;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.employeeOrder, employeeOrder) ||
                const DeepCollectionEquality()
                    .equals(other.employeeOrder, employeeOrder)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(employeeOrder) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$DataExtension
    on EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data {
  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      String? store,
      String? forecast,
      String? createdAt,
      String? updatedAt,
      List<EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item>?
          employeeOrder}) {
    return EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        employeeOrder: employeeOrder ?? this.employeeOrder);
  }

  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? watercans,
      Wrapped<String?>? date,
      Wrapped<String?>? status,
      Wrapped<String?>? store,
      Wrapped<String?>? forecast,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<
              List<
                  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item>?>?
          employeeOrder}) {
    return EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        employeeOrder:
            (employeeOrder != null ? employeeOrder.value : this.employeeOrder));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data({
    required this.id,
    required this.type,
    required this.order,
    required this.employee,
    required this.watercan,
    required this.store,
    required this.forecast,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'order')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order order;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee employee;
  @JsonKey(name: 'watercan')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan watercan;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast forecast;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$DataExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data copyWith(
      {String? id,
      String? type,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order? order,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee? employee,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan? watercan,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store? store,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast? forecast,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data(
        id: id ?? this.id,
        type: type ?? this.type,
        order: order ?? this.order,
        employee: employee ?? this.employee,
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order>? order,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee>?
          employee,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan>?
          watercan,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store>? store,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast>?
          forecast,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        employee: (employee != null ? employee.value : this.employee),
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data({
    required this.id,
    required this.type,
    required this.order,
    required this.employee,
    required this.watercan,
    required this.store,
    required this.forecast,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'order')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order order;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee employee;
  @JsonKey(name: 'watercan')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan watercan;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast forecast;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$DataExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data copyWith(
      {String? id,
      String? type,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order? order,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee? employee,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan? watercan,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store? store,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast? forecast,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data(
        id: id ?? this.id,
        type: type ?? this.type,
        order: order ?? this.order,
        employee: employee ?? this.employee,
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order>?
          order,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee>?
          employee,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan>?
          watercan,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store>?
          store,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast>?
          forecast,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        employee: (employee != null ? employee.value : this.employee),
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data({
    required this.id,
    required this.type,
    required this.order,
    required this.employee,
    required this.watercan,
    required this.store,
    required this.forecast,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'order')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order order;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee employee;
  @JsonKey(name: 'watercan')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan watercan;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast forecast;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$DataExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data copyWith(
      {String? id,
      String? type,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order? order,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee? employee,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan? watercan,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store? store,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast? forecast,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data(
        id: id ?? this.id,
        type: type ?? this.type,
        order: order ?? this.order,
        employee: employee ?? this.employee,
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? type,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order>? order,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee>?
          employee,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan>?
          watercan,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store>? store,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast>?
          forecast,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        employee: (employee != null ? employee.value : this.employee),
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintGet$Response$Data$Item {
  const EmployeeStoreStoreComplaintGet$Response$Data$Item({
    this.id,
    this.$id,
    this.store,
    this.type,
    this.order,
    this.watercans,
    this.status,
    this.description,
    this.images,
    this.storeEmployee,
    this.storeAdmin,
    this.storeAdminApproval,
    this.plantAdmin,
    this.remark,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreStoreComplaintGet$Response$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreStoreComplaintGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintGet$Response$Data$ItemToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'order')
  final String? order;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'images', defaultValue: <Object>[])
  final List<Object>? images;
  @JsonKey(name: 'store_employee')
  final String? storeEmployee;
  @JsonKey(name: 'store_admin')
  final String? storeAdmin;
  @JsonKey(name: 'store_admin_approval')
  final bool? storeAdminApproval;
  @JsonKey(name: 'plant_admin')
  final String? plantAdmin;
  @JsonKey(name: 'remark')
  final String? remark;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintGet$Response$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.storeEmployee, storeEmployee) ||
                const DeepCollectionEquality()
                    .equals(other.storeEmployee, storeEmployee)) &&
            (identical(other.storeAdmin, storeAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdmin, storeAdmin)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.plantAdmin, plantAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.plantAdmin, plantAdmin)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(storeEmployee) ^
      const DeepCollectionEquality().hash(storeAdmin) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(plantAdmin) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintGet$Response$Data$ItemExtension
    on EmployeeStoreStoreComplaintGet$Response$Data$Item {
  EmployeeStoreStoreComplaintGet$Response$Data$Item copyWith(
      {String? id,
      double? $id,
      String? store,
      String? type,
      String? order,
      double? watercans,
      String? status,
      String? description,
      List<Object>? images,
      String? storeEmployee,
      String? storeAdmin,
      bool? storeAdminApproval,
      String? plantAdmin,
      String? remark,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreStoreComplaintGet$Response$Data$Item(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        store: store ?? this.store,
        type: type ?? this.type,
        order: order ?? this.order,
        watercans: watercans ?? this.watercans,
        status: status ?? this.status,
        description: description ?? this.description,
        images: images ?? this.images,
        storeEmployee: storeEmployee ?? this.storeEmployee,
        storeAdmin: storeAdmin ?? this.storeAdmin,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        plantAdmin: plantAdmin ?? this.plantAdmin,
        remark: remark ?? this.remark,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreStoreComplaintGet$Response$Data$Item copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? store,
      Wrapped<String?>? type,
      Wrapped<String?>? order,
      Wrapped<double?>? watercans,
      Wrapped<String?>? status,
      Wrapped<String?>? description,
      Wrapped<List<Object>?>? images,
      Wrapped<String?>? storeEmployee,
      Wrapped<String?>? storeAdmin,
      Wrapped<bool?>? storeAdminApproval,
      Wrapped<String?>? plantAdmin,
      Wrapped<String?>? remark,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt}) {
    return EmployeeStoreStoreComplaintGet$Response$Data$Item(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        store: (store != null ? store.value : this.store),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        watercans: (watercans != null ? watercans.value : this.watercans),
        status: (status != null ? status.value : this.status),
        description:
            (description != null ? description.value : this.description),
        images: (images != null ? images.value : this.images),
        storeEmployee:
            (storeEmployee != null ? storeEmployee.value : this.storeEmployee),
        storeAdmin: (storeAdmin != null ? storeAdmin.value : this.storeAdmin),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        plantAdmin: (plantAdmin != null ? plantAdmin.value : this.plantAdmin),
        remark: (remark != null ? remark.value : this.remark),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintGet$Response$Meta {
  const EmployeeStoreStoreComplaintGet$Response$Meta({
    required this.pages,
    required this.total,
    required this.page,
    required this.size,
  });

  factory EmployeeStoreStoreComplaintGet$Response$Meta.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintGet$Response$MetaFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreStoreComplaintGet$Response$MetaToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintGet$Response$MetaToJson(this);

  @JsonKey(name: 'pages')
  final double pages;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'size')
  final double size;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintGet$Response$MetaFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintGet$Response$Meta &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pages) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintGet$Response$MetaExtension
    on EmployeeStoreStoreComplaintGet$Response$Meta {
  EmployeeStoreStoreComplaintGet$Response$Meta copyWith(
      {double? pages, double? total, double? page, double? size}) {
    return EmployeeStoreStoreComplaintGet$Response$Meta(
        pages: pages ?? this.pages,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  EmployeeStoreStoreComplaintGet$Response$Meta copyWithWrapped(
      {Wrapped<double>? pages,
      Wrapped<double>? total,
      Wrapped<double>? page,
      Wrapped<double>? size}) {
    return EmployeeStoreStoreComplaintGet$Response$Meta(
        pages: (pages != null ? pages.value : this.pages),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintPost$Response$Data {
  const EmployeeStoreStoreComplaintPost$Response$Data({
    this.id,
    this.$id,
    this.store,
    this.type,
    this.order,
    this.watercans,
    this.status,
    this.description,
    this.images,
    this.storeEmployee,
    this.storeAdmin,
    this.storeAdminApproval,
    this.plantAdmin,
    this.remark,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreStoreComplaintPost$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintPost$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreStoreComplaintPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintPost$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'order')
  final String? order;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String>? images;
  @JsonKey(name: 'store_employee')
  final String? storeEmployee;
  @JsonKey(name: 'store_admin')
  final String? storeAdmin;
  @JsonKey(name: 'store_admin_approval')
  final bool? storeAdminApproval;
  @JsonKey(name: 'plant_admin')
  final String? plantAdmin;
  @JsonKey(name: 'remark')
  final String? remark;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintPost$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.storeEmployee, storeEmployee) ||
                const DeepCollectionEquality()
                    .equals(other.storeEmployee, storeEmployee)) &&
            (identical(other.storeAdmin, storeAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdmin, storeAdmin)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.plantAdmin, plantAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.plantAdmin, plantAdmin)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(storeEmployee) ^
      const DeepCollectionEquality().hash(storeAdmin) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(plantAdmin) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintPost$Response$DataExtension
    on EmployeeStoreStoreComplaintPost$Response$Data {
  EmployeeStoreStoreComplaintPost$Response$Data copyWith(
      {String? id,
      double? $id,
      String? store,
      String? type,
      String? order,
      double? watercans,
      String? status,
      String? description,
      List<String>? images,
      String? storeEmployee,
      String? storeAdmin,
      bool? storeAdminApproval,
      String? plantAdmin,
      String? remark,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreStoreComplaintPost$Response$Data(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        store: store ?? this.store,
        type: type ?? this.type,
        order: order ?? this.order,
        watercans: watercans ?? this.watercans,
        status: status ?? this.status,
        description: description ?? this.description,
        images: images ?? this.images,
        storeEmployee: storeEmployee ?? this.storeEmployee,
        storeAdmin: storeAdmin ?? this.storeAdmin,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        plantAdmin: plantAdmin ?? this.plantAdmin,
        remark: remark ?? this.remark,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreStoreComplaintPost$Response$Data copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? store,
      Wrapped<String?>? type,
      Wrapped<String?>? order,
      Wrapped<double?>? watercans,
      Wrapped<String?>? status,
      Wrapped<String?>? description,
      Wrapped<List<String>?>? images,
      Wrapped<String?>? storeEmployee,
      Wrapped<String?>? storeAdmin,
      Wrapped<bool?>? storeAdminApproval,
      Wrapped<String?>? plantAdmin,
      Wrapped<String?>? remark,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt}) {
    return EmployeeStoreStoreComplaintPost$Response$Data(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        store: (store != null ? store.value : this.store),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        watercans: (watercans != null ? watercans.value : this.watercans),
        status: (status != null ? status.value : this.status),
        description:
            (description != null ? description.value : this.description),
        images: (images != null ? images.value : this.images),
        storeEmployee:
            (storeEmployee != null ? storeEmployee.value : this.storeEmployee),
        storeAdmin: (storeAdmin != null ? storeAdmin.value : this.storeAdmin),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        plantAdmin: (plantAdmin != null ? plantAdmin.value : this.plantAdmin),
        remark: (remark != null ? remark.value : this.remark),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintPut$Response$Data {
  const EmployeeStoreStoreComplaintPut$Response$Data({
    this.id,
    this.$id,
    this.store,
    this.type,
    this.order,
    this.watercans,
    this.status,
    this.description,
    this.images,
    this.storeEmployee,
    this.storeAdmin,
    this.storeAdminApproval,
    this.plantAdmin,
    this.remark,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreStoreComplaintPut$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintPut$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreStoreComplaintPut$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintPut$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'order')
  final String? order;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String>? images;
  @JsonKey(name: 'store_employee')
  final String? storeEmployee;
  @JsonKey(name: 'store_admin')
  final String? storeAdmin;
  @JsonKey(name: 'store_admin_approval')
  final bool? storeAdminApproval;
  @JsonKey(name: 'plant_admin')
  final String? plantAdmin;
  @JsonKey(name: 'remark')
  final String? remark;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintPut$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintPut$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.storeEmployee, storeEmployee) ||
                const DeepCollectionEquality()
                    .equals(other.storeEmployee, storeEmployee)) &&
            (identical(other.storeAdmin, storeAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdmin, storeAdmin)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.plantAdmin, plantAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.plantAdmin, plantAdmin)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(storeEmployee) ^
      const DeepCollectionEquality().hash(storeAdmin) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(plantAdmin) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintPut$Response$DataExtension
    on EmployeeStoreStoreComplaintPut$Response$Data {
  EmployeeStoreStoreComplaintPut$Response$Data copyWith(
      {String? id,
      double? $id,
      String? store,
      String? type,
      String? order,
      double? watercans,
      String? status,
      String? description,
      List<String>? images,
      String? storeEmployee,
      String? storeAdmin,
      bool? storeAdminApproval,
      String? plantAdmin,
      String? remark,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreStoreComplaintPut$Response$Data(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        store: store ?? this.store,
        type: type ?? this.type,
        order: order ?? this.order,
        watercans: watercans ?? this.watercans,
        status: status ?? this.status,
        description: description ?? this.description,
        images: images ?? this.images,
        storeEmployee: storeEmployee ?? this.storeEmployee,
        storeAdmin: storeAdmin ?? this.storeAdmin,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        plantAdmin: plantAdmin ?? this.plantAdmin,
        remark: remark ?? this.remark,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreStoreComplaintPut$Response$Data copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? store,
      Wrapped<String?>? type,
      Wrapped<String?>? order,
      Wrapped<double?>? watercans,
      Wrapped<String?>? status,
      Wrapped<String?>? description,
      Wrapped<List<String>?>? images,
      Wrapped<String?>? storeEmployee,
      Wrapped<String?>? storeAdmin,
      Wrapped<bool?>? storeAdminApproval,
      Wrapped<String?>? plantAdmin,
      Wrapped<String?>? remark,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt}) {
    return EmployeeStoreStoreComplaintPut$Response$Data(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        store: (store != null ? store.value : this.store),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        watercans: (watercans != null ? watercans.value : this.watercans),
        status: (status != null ? status.value : this.status),
        description:
            (description != null ? description.value : this.description),
        images: (images != null ? images.value : this.images),
        storeEmployee:
            (storeEmployee != null ? storeEmployee.value : this.storeEmployee),
        storeAdmin: (storeAdmin != null ? storeAdmin.value : this.storeAdmin),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        plantAdmin: (plantAdmin != null ? plantAdmin.value : this.plantAdmin),
        remark: (remark != null ? remark.value : this.remark),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreStoreComplaintDelete$Response$Data {
  const EmployeeStoreStoreComplaintDelete$Response$Data({
    this.id,
    this.$id,
    this.store,
    this.type,
    this.order,
    this.watercans,
    this.status,
    this.description,
    this.images,
    this.storeEmployee,
    this.storeAdmin,
    this.storeAdminApproval,
    this.plantAdmin,
    this.remark,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreStoreComplaintDelete$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreStoreComplaintDelete$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreStoreComplaintDelete$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreStoreComplaintDelete$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'order')
  final String? order;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String>? images;
  @JsonKey(name: 'store_employee')
  final String? storeEmployee;
  @JsonKey(name: 'store_admin')
  final String? storeAdmin;
  @JsonKey(name: 'store_admin_approval')
  final bool? storeAdminApproval;
  @JsonKey(name: 'plant_admin')
  final String? plantAdmin;
  @JsonKey(name: 'remark')
  final String? remark;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreStoreComplaintDelete$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreStoreComplaintDelete$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.storeEmployee, storeEmployee) ||
                const DeepCollectionEquality()
                    .equals(other.storeEmployee, storeEmployee)) &&
            (identical(other.storeAdmin, storeAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdmin, storeAdmin)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.plantAdmin, plantAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.plantAdmin, plantAdmin)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(storeEmployee) ^
      const DeepCollectionEquality().hash(storeAdmin) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(plantAdmin) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreStoreComplaintDelete$Response$DataExtension
    on EmployeeStoreStoreComplaintDelete$Response$Data {
  EmployeeStoreStoreComplaintDelete$Response$Data copyWith(
      {String? id,
      double? $id,
      String? store,
      String? type,
      String? order,
      double? watercans,
      String? status,
      String? description,
      List<String>? images,
      String? storeEmployee,
      String? storeAdmin,
      bool? storeAdminApproval,
      String? plantAdmin,
      String? remark,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreStoreComplaintDelete$Response$Data(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        store: store ?? this.store,
        type: type ?? this.type,
        order: order ?? this.order,
        watercans: watercans ?? this.watercans,
        status: status ?? this.status,
        description: description ?? this.description,
        images: images ?? this.images,
        storeEmployee: storeEmployee ?? this.storeEmployee,
        storeAdmin: storeAdmin ?? this.storeAdmin,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        plantAdmin: plantAdmin ?? this.plantAdmin,
        remark: remark ?? this.remark,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreStoreComplaintDelete$Response$Data copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? store,
      Wrapped<String?>? type,
      Wrapped<String?>? order,
      Wrapped<double?>? watercans,
      Wrapped<String?>? status,
      Wrapped<String?>? description,
      Wrapped<List<String>?>? images,
      Wrapped<String?>? storeEmployee,
      Wrapped<String?>? storeAdmin,
      Wrapped<bool?>? storeAdminApproval,
      Wrapped<String?>? plantAdmin,
      Wrapped<String?>? remark,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt}) {
    return EmployeeStoreStoreComplaintDelete$Response$Data(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        store: (store != null ? store.value : this.store),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        watercans: (watercans != null ? watercans.value : this.watercans),
        status: (status != null ? status.value : this.status),
        description:
            (description != null ? description.value : this.description),
        images: (images != null ? images.value : this.images),
        storeEmployee:
            (storeEmployee != null ? storeEmployee.value : this.storeEmployee),
        storeAdmin: (storeAdmin != null ? storeAdmin.value : this.storeAdmin),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        plantAdmin: (plantAdmin != null ? plantAdmin.value : this.plantAdmin),
        remark: (remark != null ? remark.value : this.remark),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreDashboardHomeGet$Response$Data {
  const EmployeeStoreDashboardHomeGet$Response$Data({
    this.todaysIn,
    this.todaysOut,
    this.liveStock,
    this.thisMonth,
  });

  factory EmployeeStoreDashboardHomeGet$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreDashboardHomeGet$Response$DataFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreDashboardHomeGet$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreDashboardHomeGet$Response$DataToJson(this);

  @JsonKey(name: 'todays_in')
  final double? todaysIn;
  @JsonKey(name: 'todays_out')
  final double? todaysOut;
  @JsonKey(name: 'live_stock')
  final double? liveStock;
  @JsonKey(name: 'this_month')
  final double? thisMonth;
  static const fromJsonFactory =
      _$EmployeeStoreDashboardHomeGet$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreDashboardHomeGet$Response$Data &&
            (identical(other.todaysIn, todaysIn) ||
                const DeepCollectionEquality()
                    .equals(other.todaysIn, todaysIn)) &&
            (identical(other.todaysOut, todaysOut) ||
                const DeepCollectionEquality()
                    .equals(other.todaysOut, todaysOut)) &&
            (identical(other.liveStock, liveStock) ||
                const DeepCollectionEquality()
                    .equals(other.liveStock, liveStock)) &&
            (identical(other.thisMonth, thisMonth) ||
                const DeepCollectionEquality()
                    .equals(other.thisMonth, thisMonth)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(todaysIn) ^
      const DeepCollectionEquality().hash(todaysOut) ^
      const DeepCollectionEquality().hash(liveStock) ^
      const DeepCollectionEquality().hash(thisMonth) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreDashboardHomeGet$Response$DataExtension
    on EmployeeStoreDashboardHomeGet$Response$Data {
  EmployeeStoreDashboardHomeGet$Response$Data copyWith(
      {double? todaysIn,
      double? todaysOut,
      double? liveStock,
      double? thisMonth}) {
    return EmployeeStoreDashboardHomeGet$Response$Data(
        todaysIn: todaysIn ?? this.todaysIn,
        todaysOut: todaysOut ?? this.todaysOut,
        liveStock: liveStock ?? this.liveStock,
        thisMonth: thisMonth ?? this.thisMonth);
  }

  EmployeeStoreDashboardHomeGet$Response$Data copyWithWrapped(
      {Wrapped<double?>? todaysIn,
      Wrapped<double?>? todaysOut,
      Wrapped<double?>? liveStock,
      Wrapped<double?>? thisMonth}) {
    return EmployeeStoreDashboardHomeGet$Response$Data(
        todaysIn: (todaysIn != null ? todaysIn.value : this.todaysIn),
        todaysOut: (todaysOut != null ? todaysOut.value : this.todaysOut),
        liveStock: (liveStock != null ? liveStock.value : this.liveStock),
        thisMonth: (thisMonth != null ? thisMonth.value : this.thisMonth));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreOrdersGet$Response$Data$Item {
  const EmployeeStoreOrdersGet$Response$Data$Item({
    this.id,
    this.watercans,
    this.date,
    this.status,
    this.store,
    this.forecast,
    this.complaint,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreOrdersGet$Response$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreOrdersGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreOrdersGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreOrdersGet$Response$Data$ItemToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'forecast')
  final String? forecast;
  @JsonKey(name: 'complaint')
  final String? complaint;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreOrdersGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreOrdersGet$Response$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.complaint, complaint) ||
                const DeepCollectionEquality()
                    .equals(other.complaint, complaint)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(complaint) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreOrdersGet$Response$Data$ItemExtension
    on EmployeeStoreOrdersGet$Response$Data$Item {
  EmployeeStoreOrdersGet$Response$Data$Item copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      String? store,
      String? forecast,
      String? complaint,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreOrdersGet$Response$Data$Item(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        complaint: complaint ?? this.complaint,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreOrdersGet$Response$Data$Item copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? watercans,
      Wrapped<String?>? date,
      Wrapped<String?>? status,
      Wrapped<String?>? store,
      Wrapped<String?>? forecast,
      Wrapped<String?>? complaint,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt}) {
    return EmployeeStoreOrdersGet$Response$Data$Item(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        complaint: (complaint != null ? complaint.value : this.complaint),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreOrdersGet$Response$Meta {
  const EmployeeStoreOrdersGet$Response$Meta({
    required this.pages,
    required this.total,
    required this.page,
    required this.size,
  });

  factory EmployeeStoreOrdersGet$Response$Meta.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreOrdersGet$Response$MetaFromJson(json);

  static const toJsonFactory = _$EmployeeStoreOrdersGet$Response$MetaToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreOrdersGet$Response$MetaToJson(this);

  @JsonKey(name: 'pages')
  final double pages;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'size')
  final double size;
  static const fromJsonFactory = _$EmployeeStoreOrdersGet$Response$MetaFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreOrdersGet$Response$Meta &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pages) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreOrdersGet$Response$MetaExtension
    on EmployeeStoreOrdersGet$Response$Meta {
  EmployeeStoreOrdersGet$Response$Meta copyWith(
      {double? pages, double? total, double? page, double? size}) {
    return EmployeeStoreOrdersGet$Response$Meta(
        pages: pages ?? this.pages,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  EmployeeStoreOrdersGet$Response$Meta copyWithWrapped(
      {Wrapped<double>? pages,
      Wrapped<double>? total,
      Wrapped<double>? page,
      Wrapped<double>? size}) {
    return EmployeeStoreOrdersGet$Response$Meta(
        pages: (pages != null ? pages.value : this.pages),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreReturnOrderGet$Response$Data$Item {
  const EmployeeStoreReturnOrderGet$Response$Data$Item({
    this.id,
    this.watercans,
    this.date,
    this.status,
    this.store,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreReturnOrderGet$Response$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreReturnOrderGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreReturnOrderGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreReturnOrderGet$Response$Data$ItemToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreReturnOrderGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreReturnOrderGet$Response$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreReturnOrderGet$Response$Data$ItemExtension
    on EmployeeStoreReturnOrderGet$Response$Data$Item {
  EmployeeStoreReturnOrderGet$Response$Data$Item copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      String? store,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreReturnOrderGet$Response$Data$Item(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreReturnOrderGet$Response$Data$Item copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? watercans,
      Wrapped<String?>? date,
      Wrapped<String?>? status,
      Wrapped<String?>? store,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt}) {
    return EmployeeStoreReturnOrderGet$Response$Data$Item(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreReturnOrderGet$Response$Meta {
  const EmployeeStoreReturnOrderGet$Response$Meta({
    required this.pages,
    required this.total,
    required this.page,
    required this.size,
  });

  factory EmployeeStoreReturnOrderGet$Response$Meta.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreReturnOrderGet$Response$MetaFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreReturnOrderGet$Response$MetaToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreReturnOrderGet$Response$MetaToJson(this);

  @JsonKey(name: 'pages')
  final double pages;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'size')
  final double size;
  static const fromJsonFactory =
      _$EmployeeStoreReturnOrderGet$Response$MetaFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreReturnOrderGet$Response$Meta &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pages) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreReturnOrderGet$Response$MetaExtension
    on EmployeeStoreReturnOrderGet$Response$Meta {
  EmployeeStoreReturnOrderGet$Response$Meta copyWith(
      {double? pages, double? total, double? page, double? size}) {
    return EmployeeStoreReturnOrderGet$Response$Meta(
        pages: pages ?? this.pages,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  EmployeeStoreReturnOrderGet$Response$Meta copyWithWrapped(
      {Wrapped<double>? pages,
      Wrapped<double>? total,
      Wrapped<double>? page,
      Wrapped<double>? size}) {
    return EmployeeStoreReturnOrderGet$Response$Meta(
        pages: (pages != null ? pages.value : this.pages),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreForecastGet$Response$Data$Item {
  const EmployeeStoreForecastGet$Response$Data$Item({
    this.id,
    this.watercans,
    this.date,
    this.store,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreForecastGet$Response$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreForecastGet$Response$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreForecastGet$Response$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreForecastGet$Response$Data$ItemToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreForecastGet$Response$Data$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreForecastGet$Response$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreForecastGet$Response$Data$ItemExtension
    on EmployeeStoreForecastGet$Response$Data$Item {
  EmployeeStoreForecastGet$Response$Data$Item copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? store,
      String? status,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreForecastGet$Response$Data$Item(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreForecastGet$Response$Data$Item copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? watercans,
      Wrapped<String?>? date,
      Wrapped<String?>? store,
      Wrapped<String?>? status,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt}) {
    return EmployeeStoreForecastGet$Response$Data$Item(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreForecastGet$Response$Meta {
  const EmployeeStoreForecastGet$Response$Meta({
    required this.pages,
    required this.total,
    required this.page,
    required this.size,
  });

  factory EmployeeStoreForecastGet$Response$Meta.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreForecastGet$Response$MetaFromJson(json);

  static const toJsonFactory = _$EmployeeStoreForecastGet$Response$MetaToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreForecastGet$Response$MetaToJson(this);

  @JsonKey(name: 'pages')
  final double pages;
  @JsonKey(name: 'total')
  final double total;
  @JsonKey(name: 'page')
  final double page;
  @JsonKey(name: 'size')
  final double size;
  static const fromJsonFactory =
      _$EmployeeStoreForecastGet$Response$MetaFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreForecastGet$Response$Meta &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pages) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreForecastGet$Response$MetaExtension
    on EmployeeStoreForecastGet$Response$Meta {
  EmployeeStoreForecastGet$Response$Meta copyWith(
      {double? pages, double? total, double? page, double? size}) {
    return EmployeeStoreForecastGet$Response$Meta(
        pages: pages ?? this.pages,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  EmployeeStoreForecastGet$Response$Meta copyWithWrapped(
      {Wrapped<double>? pages,
      Wrapped<double>? total,
      Wrapped<double>? page,
      Wrapped<double>? size}) {
    return EmployeeStoreForecastGet$Response$Meta(
        pages: (pages != null ? pages.value : this.pages),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreForecastPost$Response$Data {
  const EmployeeStoreForecastPost$Response$Data({
    this.id,
    this.watercans,
    this.date,
    this.store,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreForecastPost$Response$Data.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreForecastPost$Response$DataFromJson(json);

  static const toJsonFactory = _$EmployeeStoreForecastPost$Response$DataToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreForecastPost$Response$DataToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'watercans')
  final double? watercans;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreForecastPost$Response$DataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreForecastPost$Response$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreForecastPost$Response$DataExtension
    on EmployeeStoreForecastPost$Response$Data {
  EmployeeStoreForecastPost$Response$Data copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? store,
      String? status,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreForecastPost$Response$Data(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreForecastPost$Response$Data copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? watercans,
      Wrapped<String?>? date,
      Wrapped<String?>? store,
      Wrapped<String?>? status,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt}) {
    return EmployeeStoreForecastPost$Response$Data(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthLoginPost$Response$Data$Store {
  const EmployeeStoreAuthLoginPost$Response$Data$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreAuthLoginPost$Response$Data$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthLoginPost$Response$Data$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreAuthLoginPost$Response$Data$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthLoginPost$Response$Data$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreAuthLoginPost$Response$Data$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthLoginPost$Response$Data$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthLoginPost$Response$Data$StoreExtension
    on EmployeeStoreAuthLoginPost$Response$Data$Store {
  EmployeeStoreAuthLoginPost$Response$Data$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate? coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreAuthLoginPost$Response$Data$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreAuthLoginPost$Response$Data$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreAuthLoginPost$Response$Data$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthMeGet$Response$Data$Store {
  const EmployeeStoreAuthMeGet$Response$Data$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreAuthMeGet$Response$Data$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthMeGet$Response$Data$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreAuthMeGet$Response$Data$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthMeGet$Response$Data$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreAuthMeGet$Response$Data$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthMeGet$Response$Data$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthMeGet$Response$Data$StoreExtension
    on EmployeeStoreAuthMeGet$Response$Data$Store {
  EmployeeStoreAuthMeGet$Response$Data$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate? coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreAuthMeGet$Response$Data$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreAuthMeGet$Response$Data$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreAuthMeGet$Response$Data$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order({
    required this.id,
    required this.watercans,
    required this.date,
    required this.status,
    required this.store,
    required this.forecast,
    required this.employee,
    required this.deliveredAt,
    required this.outAt,
    required this.scannedOutside,
    required this.remark,
    required this.images,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$OrderFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$OrderToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$OrderToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast
      forecast;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee
      employee;
  @JsonKey(name: 'delivered_at')
  final String deliveredAt;
  @JsonKey(name: 'out_at')
  final String outAt;
  @JsonKey(name: 'scanned_outside')
  final bool scannedOutside;
  @JsonKey(name: 'remark')
  final String remark;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String> images;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$OrderFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.deliveredAt, deliveredAt) ||
                const DeepCollectionEquality()
                    .equals(other.deliveredAt, deliveredAt)) &&
            (identical(other.outAt, outAt) ||
                const DeepCollectionEquality().equals(other.outAt, outAt)) &&
            (identical(other.scannedOutside, scannedOutside) ||
                const DeepCollectionEquality()
                    .equals(other.scannedOutside, scannedOutside)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(outAt) ^
      const DeepCollectionEquality().hash(scannedOutside) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$OrderExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store? store,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast?
          forecast,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee?
          employee,
      String? deliveredAt,
      String? outAt,
      bool? scannedOutside,
      String? remark,
      List<String>? images,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        employee: employee ?? this.employee,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        outAt: outAt ?? this.outAt,
        scannedOutside: scannedOutside ?? this.scannedOutside,
        remark: remark ?? this.remark,
        images: images ?? this.images,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<String>? status,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store>?
          store,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast>?
          forecast,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee>?
          employee,
      Wrapped<String>? deliveredAt,
      Wrapped<String>? outAt,
      Wrapped<bool>? scannedOutside,
      Wrapped<String>? remark,
      Wrapped<List<String>>? images,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        employee: (employee != null ? employee.value : this.employee),
        deliveredAt:
            (deliveredAt != null ? deliveredAt.value : this.deliveredAt),
        outAt: (outAt != null ? outAt.value : this.outAt),
        scannedOutside: (scannedOutside != null
            ? scannedOutside.value
            : this.scannedOutside),
        remark: (remark != null ? remark.value : this.remark),
        images: (images != null ? images.value : this.images),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee({
    this.id,
    this.$id,
    this.name,
    this.token,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.store,
    this.status,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$EmployeeToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final String? $id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store? store;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$EmployeeExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? token,
      String? password,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store? store,
      String? status}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        token: token ?? this.token,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        store: store ?? this.store,
        status: status ?? this.status);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? $id,
      Wrapped<String?>? name,
      Wrapped<String?>? token,
      Wrapped<String?>? password,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store?>?
          store,
      Wrapped<String?>? status}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        token: (token != null ? token.value : this.token),
        password: (password != null ? password.value : this.password),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan({
    this.id,
    this.$id,
    this.qrUrl,
    this.status,
    this.plant,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$WatercanFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$WatercanToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$WatercanToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'qr_url')
  final String? qrUrl;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'plant')
  final String? plant;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$WatercanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plant) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$WatercanExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan copyWith(
      {String? id, double? $id, String? qrUrl, String? status, String? plant}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status,
        plant: plant ?? this.plant);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? qrUrl,
      Wrapped<String?>? status,
      Wrapped<String?>? plant}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        qrUrl: (qrUrl != null ? qrUrl.value : this.qrUrl),
        status: (status != null ? status.value : this.status),
        plant: (plant != null ? plant.value : this.plant));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$StoreExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$ForecastToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$ForecastExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store? store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order({
    required this.id,
    required this.watercans,
    required this.date,
    required this.status,
    required this.store,
    required this.forecast,
    required this.employee,
    required this.deliveredAt,
    required this.outAt,
    required this.scannedOutside,
    required this.remark,
    required this.images,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$OrderFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$OrderToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$OrderToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast forecast;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee employee;
  @JsonKey(name: 'delivered_at')
  final String deliveredAt;
  @JsonKey(name: 'out_at')
  final String outAt;
  @JsonKey(name: 'scanned_outside')
  final bool scannedOutside;
  @JsonKey(name: 'remark')
  final String remark;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String> images;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$OrderFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.deliveredAt, deliveredAt) ||
                const DeepCollectionEquality()
                    .equals(other.deliveredAt, deliveredAt)) &&
            (identical(other.outAt, outAt) ||
                const DeepCollectionEquality().equals(other.outAt, outAt)) &&
            (identical(other.scannedOutside, scannedOutside) ||
                const DeepCollectionEquality()
                    .equals(other.scannedOutside, scannedOutside)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(outAt) ^
      const DeepCollectionEquality().hash(scannedOutside) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$OrderExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store? store,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast? forecast,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee? employee,
      String? deliveredAt,
      String? outAt,
      bool? scannedOutside,
      String? remark,
      List<String>? images,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        employee: employee ?? this.employee,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        outAt: outAt ?? this.outAt,
        scannedOutside: scannedOutside ?? this.scannedOutside,
        remark: remark ?? this.remark,
        images: images ?? this.images,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<String>? status,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store>? store,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast>?
          forecast,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee>?
          employee,
      Wrapped<String>? deliveredAt,
      Wrapped<String>? outAt,
      Wrapped<bool>? scannedOutside,
      Wrapped<String>? remark,
      Wrapped<List<String>>? images,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        employee: (employee != null ? employee.value : this.employee),
        deliveredAt:
            (deliveredAt != null ? deliveredAt.value : this.deliveredAt),
        outAt: (outAt != null ? outAt.value : this.outAt),
        scannedOutside: (scannedOutside != null
            ? scannedOutside.value
            : this.scannedOutside),
        remark: (remark != null ? remark.value : this.remark),
        images: (images != null ? images.value : this.images),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Employee {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Employee({
    this.id,
    this.$id,
    this.name,
    this.token,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.store,
    this.status,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$EmployeeFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$EmployeeToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final String? $id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store? store;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$EmployeeExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Employee {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? token,
      String? password,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store? store,
      String? status}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        token: token ?? this.token,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        store: store ?? this.store,
        status: status ?? this.status);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Employee copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? $id,
      Wrapped<String?>? name,
      Wrapped<String?>? token,
      Wrapped<String?>? password,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store?>?
          store,
      Wrapped<String?>? status}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        token: (token != null ? token.value : this.token),
        password: (password != null ? password.value : this.password),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan({
    this.id,
    this.$id,
    this.qrUrl,
    this.status,
    this.plant,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$WatercanFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$WatercanToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$WatercanToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'qr_url')
  final String? qrUrl;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'plant')
  final String? plant;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$WatercanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plant) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$WatercanExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan copyWith(
      {String? id, double? $id, String? qrUrl, String? status, String? plant}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status,
        plant: plant ?? this.plant);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? qrUrl,
      Wrapped<String?>? status,
      Wrapped<String?>? plant}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        qrUrl: (qrUrl != null ? qrUrl.value : this.qrUrl),
        status: (status != null ? status.value : this.status),
        plant: (plant != null ? plant.value : this.plant));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Store {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$StoreExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Store {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$ForecastFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$ForecastToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$ForecastExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store? store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order({
    required this.id,
    required this.watercans,
    required this.date,
    required this.status,
    required this.store,
    required this.forecast,
    required this.employee,
    required this.deliveredAt,
    required this.outAt,
    required this.scannedOutside,
    required this.remark,
    required this.images,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$OrderFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$OrderToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$OrderToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast forecast;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee employee;
  @JsonKey(name: 'delivered_at')
  final String deliveredAt;
  @JsonKey(name: 'out_at')
  final String outAt;
  @JsonKey(name: 'scanned_outside')
  final bool scannedOutside;
  @JsonKey(name: 'remark')
  final String remark;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String> images;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$OrderFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.deliveredAt, deliveredAt) ||
                const DeepCollectionEquality()
                    .equals(other.deliveredAt, deliveredAt)) &&
            (identical(other.outAt, outAt) ||
                const DeepCollectionEquality().equals(other.outAt, outAt)) &&
            (identical(other.scannedOutside, scannedOutside) ||
                const DeepCollectionEquality()
                    .equals(other.scannedOutside, scannedOutside)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(outAt) ^
      const DeepCollectionEquality().hash(scannedOutside) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$OrderExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store? store,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast? forecast,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee? employee,
      String? deliveredAt,
      String? outAt,
      bool? scannedOutside,
      String? remark,
      List<String>? images,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        employee: employee ?? this.employee,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        outAt: outAt ?? this.outAt,
        scannedOutside: scannedOutside ?? this.scannedOutside,
        remark: remark ?? this.remark,
        images: images ?? this.images,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<String>? status,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store>? store,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast>?
          forecast,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee>?
          employee,
      Wrapped<String>? deliveredAt,
      Wrapped<String>? outAt,
      Wrapped<bool>? scannedOutside,
      Wrapped<String>? remark,
      Wrapped<List<String>>? images,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        employee: (employee != null ? employee.value : this.employee),
        deliveredAt:
            (deliveredAt != null ? deliveredAt.value : this.deliveredAt),
        outAt: (outAt != null ? outAt.value : this.outAt),
        scannedOutside: (scannedOutside != null
            ? scannedOutside.value
            : this.scannedOutside),
        remark: (remark != null ? remark.value : this.remark),
        images: (images != null ? images.value : this.images),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Employee {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Employee({
    this.id,
    this.$id,
    this.name,
    this.token,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.store,
    this.status,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$EmployeeFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$EmployeeToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final String? $id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store? store;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$EmployeeExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Employee {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? token,
      String? password,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store? store,
      String? status}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        token: token ?? this.token,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        store: store ?? this.store,
        status: status ?? this.status);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Employee copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? $id,
      Wrapped<String?>? name,
      Wrapped<String?>? token,
      Wrapped<String?>? password,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store?>?
          store,
      Wrapped<String?>? status}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        token: (token != null ? token.value : this.token),
        password: (password != null ? password.value : this.password),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan({
    this.id,
    this.$id,
    this.qrUrl,
    this.status,
    this.plant,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$WatercanFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$WatercanToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$WatercanToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'qr_url')
  final String? qrUrl;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'plant')
  final String? plant;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$WatercanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plant) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$WatercanExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan copyWith(
      {String? id, double? $id, String? qrUrl, String? status, String? plant}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status,
        plant: plant ?? this.plant);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? qrUrl,
      Wrapped<String?>? status,
      Wrapped<String?>? plant}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        qrUrl: (qrUrl != null ? qrUrl.value : this.qrUrl),
        status: (status != null ? status.value : this.status),
        plant: (plant != null ? plant.value : this.plant));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Store {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$StoreExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Store {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate? coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$ForecastFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$ForecastToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$ForecastExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store? store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order({
    required this.id,
    required this.watercans,
    required this.date,
    required this.status,
    required this.store,
    required this.forecast,
    required this.employee,
    required this.deliveredAt,
    required this.outAt,
    required this.scannedOutside,
    required this.remark,
    required this.images,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$OrderFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$OrderToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$OrderToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast forecast;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee employee;
  @JsonKey(name: 'delivered_at')
  final String deliveredAt;
  @JsonKey(name: 'out_at')
  final String outAt;
  @JsonKey(name: 'scanned_outside')
  final bool scannedOutside;
  @JsonKey(name: 'remark')
  final String remark;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String> images;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$OrderFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.deliveredAt, deliveredAt) ||
                const DeepCollectionEquality()
                    .equals(other.deliveredAt, deliveredAt)) &&
            (identical(other.outAt, outAt) ||
                const DeepCollectionEquality().equals(other.outAt, outAt)) &&
            (identical(other.scannedOutside, scannedOutside) ||
                const DeepCollectionEquality()
                    .equals(other.scannedOutside, scannedOutside)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(outAt) ^
      const DeepCollectionEquality().hash(scannedOutside) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$OrderExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store? store,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast? forecast,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee? employee,
      String? deliveredAt,
      String? outAt,
      bool? scannedOutside,
      String? remark,
      List<String>? images,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        employee: employee ?? this.employee,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        outAt: outAt ?? this.outAt,
        scannedOutside: scannedOutside ?? this.scannedOutside,
        remark: remark ?? this.remark,
        images: images ?? this.images,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<String>? status,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store>?
          store,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast>?
          forecast,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee>?
          employee,
      Wrapped<String>? deliveredAt,
      Wrapped<String>? outAt,
      Wrapped<bool>? scannedOutside,
      Wrapped<String>? remark,
      Wrapped<List<String>>? images,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        employee: (employee != null ? employee.value : this.employee),
        deliveredAt:
            (deliveredAt != null ? deliveredAt.value : this.deliveredAt),
        outAt: (outAt != null ? outAt.value : this.outAt),
        scannedOutside: (scannedOutside != null
            ? scannedOutside.value
            : this.scannedOutside),
        remark: (remark != null ? remark.value : this.remark),
        images: (images != null ? images.value : this.images),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee({
    this.id,
    this.$id,
    this.name,
    this.token,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.store,
    this.status,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$EmployeeFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$EmployeeToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final String? $id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store? store;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$EmployeeExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? token,
      String? password,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store? store,
      String? status}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        token: token ?? this.token,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        store: store ?? this.store,
        status: status ?? this.status);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? $id,
      Wrapped<String?>? name,
      Wrapped<String?>? token,
      Wrapped<String?>? password,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store?>?
          store,
      Wrapped<String?>? status}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        token: (token != null ? token.value : this.token),
        password: (password != null ? password.value : this.password),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan({
    this.id,
    this.$id,
    this.qrUrl,
    this.status,
    this.plant,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$WatercanFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$WatercanToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$WatercanToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'qr_url')
  final String? qrUrl;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'plant')
  final String? plant;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$WatercanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plant) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$WatercanExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan copyWith(
      {String? id, double? $id, String? qrUrl, String? status, String? plant}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status,
        plant: plant ?? this.plant);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? qrUrl,
      Wrapped<String?>? status,
      Wrapped<String?>? plant}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        qrUrl: (qrUrl != null ? qrUrl.value : this.qrUrl),
        status: (status != null ? status.value : this.status),
        plant: (plant != null ? plant.value : this.plant));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Store {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$StoreExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Store {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$ForecastFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$ForecastToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$ForecastExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store? store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store {
  const EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$StoreExtension
    on EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store {
  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item {
  const EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item({
    this.id,
    this.type,
    this.order,
    this.employee,
    this.watercan,
    this.store,
    this.forecast,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$ItemFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$ItemToJson(
          this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'order')
  final String? order;
  @JsonKey(name: 'employee')
  final String? employee;
  @JsonKey(name: 'watercan')
  final EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan?
      watercan;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'forecast')
  final String? forecast;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$ItemExtension
    on EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item {
  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item
      copyWith(
          {String? id,
          String? type,
          String? order,
          String? employee,
          EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan?
              watercan,
          String? store,
          String? forecast,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item(
        id: id ?? this.id,
        type: type ?? this.type,
        order: order ?? this.order,
        employee: employee ?? this.employee,
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item
      copyWithWrapped(
          {Wrapped<String?>? id,
          Wrapped<String?>? type,
          Wrapped<String?>? order,
          Wrapped<String?>? employee,
          Wrapped<EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan?>?
              watercan,
          Wrapped<String?>? store,
          Wrapped<String?>? forecast,
          Wrapped<String?>? createdAt,
          Wrapped<String?>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        employee: (employee != null ? employee.value : this.employee),
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item {
  const EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item({
    this.id,
    this.type,
    this.order,
    this.employee,
    this.watercan,
    this.store,
    this.forecast,
    this.createdAt,
    this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$ItemFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$ItemToJson(
          this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'order')
  final String? order;
  @JsonKey(name: 'employee')
  final String? employee;
  @JsonKey(name: 'watercan')
  final EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan?
      watercan;
  @JsonKey(name: 'store')
  final String? store;
  @JsonKey(name: 'forecast')
  final String? forecast;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.watercan, watercan) ||
                const DeepCollectionEquality()
                    .equals(other.watercan, watercan)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(watercan) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$ItemExtension
    on EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item {
  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item
      copyWith(
          {String? id,
          String? type,
          String? order,
          String? employee,
          EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan?
              watercan,
          String? store,
          String? forecast,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item(
        id: id ?? this.id,
        type: type ?? this.type,
        order: order ?? this.order,
        employee: employee ?? this.employee,
        watercan: watercan ?? this.watercan,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item
      copyWithWrapped(
          {Wrapped<String?>? id,
          Wrapped<String?>? type,
          Wrapped<String?>? order,
          Wrapped<String?>? employee,
          Wrapped<EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan?>?
              watercan,
          Wrapped<String?>? store,
          Wrapped<String?>? forecast,
          Wrapped<String?>? createdAt,
          Wrapped<String?>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        order: (order != null ? order.value : this.order),
        employee: (employee != null ? employee.value : this.employee),
        watercan: (watercan != null ? watercan.value : this.watercan),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order({
    required this.id,
    required this.watercans,
    required this.date,
    required this.status,
    required this.store,
    required this.forecast,
    required this.employee,
    required this.deliveredAt,
    required this.outAt,
    required this.scannedOutside,
    required this.remark,
    required this.images,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$OrderFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$OrderToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$OrderToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast
      forecast;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee
      employee;
  @JsonKey(name: 'delivered_at')
  final String deliveredAt;
  @JsonKey(name: 'out_at')
  final String outAt;
  @JsonKey(name: 'scanned_outside')
  final bool scannedOutside;
  @JsonKey(name: 'remark')
  final String remark;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String> images;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$OrderFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.deliveredAt, deliveredAt) ||
                const DeepCollectionEquality()
                    .equals(other.deliveredAt, deliveredAt)) &&
            (identical(other.outAt, outAt) ||
                const DeepCollectionEquality().equals(other.outAt, outAt)) &&
            (identical(other.scannedOutside, scannedOutside) ||
                const DeepCollectionEquality()
                    .equals(other.scannedOutside, scannedOutside)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(outAt) ^
      const DeepCollectionEquality().hash(scannedOutside) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$OrderExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store? store,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast? forecast,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee? employee,
      String? deliveredAt,
      String? outAt,
      bool? scannedOutside,
      String? remark,
      List<String>? images,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        employee: employee ?? this.employee,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        outAt: outAt ?? this.outAt,
        scannedOutside: scannedOutside ?? this.scannedOutside,
        remark: remark ?? this.remark,
        images: images ?? this.images,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<String>? status,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store>?
          store,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast>?
          forecast,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee>?
          employee,
      Wrapped<String>? deliveredAt,
      Wrapped<String>? outAt,
      Wrapped<bool>? scannedOutside,
      Wrapped<String>? remark,
      Wrapped<List<String>>? images,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        employee: (employee != null ? employee.value : this.employee),
        deliveredAt:
            (deliveredAt != null ? deliveredAt.value : this.deliveredAt),
        outAt: (outAt != null ? outAt.value : this.outAt),
        scannedOutside: (scannedOutside != null
            ? scannedOutside.value
            : this.scannedOutside),
        remark: (remark != null ? remark.value : this.remark),
        images: (images != null ? images.value : this.images),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee({
    this.id,
    this.$id,
    this.name,
    this.token,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.store,
    this.status,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$EmployeeFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$EmployeeToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final String? $id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store? store;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$EmployeeExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? token,
      String? password,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store? store,
      String? status}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        token: token ?? this.token,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        store: store ?? this.store,
        status: status ?? this.status);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? $id,
      Wrapped<String?>? name,
      Wrapped<String?>? token,
      Wrapped<String?>? password,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store?>?
          store,
      Wrapped<String?>? status}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        token: (token != null ? token.value : this.token),
        password: (password != null ? password.value : this.password),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan({
    this.id,
    this.$id,
    this.qrUrl,
    this.status,
    this.plant,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$WatercanFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$WatercanToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$WatercanToJson(this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'qr_url')
  final String? qrUrl;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'plant')
  final String? plant;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$WatercanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plant) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$WatercanExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan copyWith(
      {String? id, double? $id, String? qrUrl, String? status, String? plant}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status,
        plant: plant ?? this.plant);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? qrUrl,
      Wrapped<String?>? status,
      Wrapped<String?>? plant}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        qrUrl: (qrUrl != null ? qrUrl.value : this.qrUrl),
        status: (status != null ? status.value : this.status),
        plant: (plant != null ? plant.value : this.plant));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$StoreExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$ForecastFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$ForecastToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$ForecastExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store? store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order({
    required this.id,
    required this.watercans,
    required this.date,
    required this.status,
    required this.store,
    required this.forecast,
    required this.employee,
    required this.deliveredAt,
    required this.outAt,
    required this.scannedOutside,
    required this.remark,
    required this.images,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$OrderFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$OrderToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$OrderToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast
      forecast;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee
      employee;
  @JsonKey(name: 'delivered_at')
  final String deliveredAt;
  @JsonKey(name: 'out_at')
  final String outAt;
  @JsonKey(name: 'scanned_outside')
  final bool scannedOutside;
  @JsonKey(name: 'remark')
  final String remark;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String> images;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$OrderFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.deliveredAt, deliveredAt) ||
                const DeepCollectionEquality()
                    .equals(other.deliveredAt, deliveredAt)) &&
            (identical(other.outAt, outAt) ||
                const DeepCollectionEquality().equals(other.outAt, outAt)) &&
            (identical(other.scannedOutside, scannedOutside) ||
                const DeepCollectionEquality()
                    .equals(other.scannedOutside, scannedOutside)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(outAt) ^
      const DeepCollectionEquality().hash(scannedOutside) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$OrderExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store? store,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast?
          forecast,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee?
          employee,
      String? deliveredAt,
      String? outAt,
      bool? scannedOutside,
      String? remark,
      List<String>? images,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        employee: employee ?? this.employee,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        outAt: outAt ?? this.outAt,
        scannedOutside: scannedOutside ?? this.scannedOutside,
        remark: remark ?? this.remark,
        images: images ?? this.images,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<String>? status,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store>?
          store,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast>?
          forecast,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee>?
          employee,
      Wrapped<String>? deliveredAt,
      Wrapped<String>? outAt,
      Wrapped<bool>? scannedOutside,
      Wrapped<String>? remark,
      Wrapped<List<String>>? images,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        employee: (employee != null ? employee.value : this.employee),
        deliveredAt:
            (deliveredAt != null ? deliveredAt.value : this.deliveredAt),
        outAt: (outAt != null ? outAt.value : this.outAt),
        scannedOutside: (scannedOutside != null
            ? scannedOutside.value
            : this.scannedOutside),
        remark: (remark != null ? remark.value : this.remark),
        images: (images != null ? images.value : this.images),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee({
    this.id,
    this.$id,
    this.name,
    this.token,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.store,
    this.status,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$EmployeeToJson(
          this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final String? $id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store?
      store;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$EmployeeExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? token,
      String? password,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store?
          store,
      String? status}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        token: token ?? this.token,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        store: store ?? this.store,
        status: status ?? this.status);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? $id,
      Wrapped<String?>? name,
      Wrapped<String?>? token,
      Wrapped<String?>? password,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store?>?
          store,
      Wrapped<String?>? status}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        token: (token != null ? token.value : this.token),
        password: (password != null ? password.value : this.password),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan({
    this.id,
    this.$id,
    this.qrUrl,
    this.status,
    this.plant,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$WatercanFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$WatercanToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$WatercanToJson(
          this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'qr_url')
  final String? qrUrl;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'plant')
  final String? plant;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$WatercanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plant) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$WatercanExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan copyWith(
      {String? id, double? $id, String? qrUrl, String? status, String? plant}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status,
        plant: plant ?? this.plant);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? qrUrl,
      Wrapped<String?>? status,
      Wrapped<String?>? plant}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        qrUrl: (qrUrl != null ? qrUrl.value : this.qrUrl),
        status: (status != null ? status.value : this.status),
        plant: (plant != null ? plant.value : this.plant));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$ForecastToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store
      store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$ForecastExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store?
          store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order({
    required this.id,
    required this.watercans,
    required this.date,
    required this.status,
    required this.store,
    required this.forecast,
    required this.employee,
    required this.deliveredAt,
    required this.outAt,
    required this.scannedOutside,
    required this.remark,
    required this.images,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$OrderFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$OrderToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$OrderToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store store;
  @JsonKey(name: 'forecast')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast
      forecast;
  @JsonKey(name: 'employee')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee
      employee;
  @JsonKey(name: 'delivered_at')
  final String deliveredAt;
  @JsonKey(name: 'out_at')
  final String outAt;
  @JsonKey(name: 'scanned_outside')
  final bool scannedOutside;
  @JsonKey(name: 'remark')
  final String remark;
  @JsonKey(name: 'images', defaultValue: <String>[])
  final List<String> images;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$OrderFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.deliveredAt, deliveredAt) ||
                const DeepCollectionEquality()
                    .equals(other.deliveredAt, deliveredAt)) &&
            (identical(other.outAt, outAt) ||
                const DeepCollectionEquality().equals(other.outAt, outAt)) &&
            (identical(other.scannedOutside, scannedOutside) ||
                const DeepCollectionEquality()
                    .equals(other.scannedOutside, scannedOutside)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(outAt) ^
      const DeepCollectionEquality().hash(scannedOutside) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$OrderExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order copyWith(
      {String? id,
      double? watercans,
      String? date,
      String? status,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store? store,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast?
          forecast,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee?
          employee,
      String? deliveredAt,
      String? outAt,
      bool? scannedOutside,
      String? remark,
      List<String>? images,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        status: status ?? this.status,
        store: store ?? this.store,
        forecast: forecast ?? this.forecast,
        employee: employee ?? this.employee,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        outAt: outAt ?? this.outAt,
        scannedOutside: scannedOutside ?? this.scannedOutside,
        remark: remark ?? this.remark,
        images: images ?? this.images,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<String>? status,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store>?
          store,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast>?
          forecast,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee>?
          employee,
      Wrapped<String>? deliveredAt,
      Wrapped<String>? outAt,
      Wrapped<bool>? scannedOutside,
      Wrapped<String>? remark,
      Wrapped<List<String>>? images,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        status: (status != null ? status.value : this.status),
        store: (store != null ? store.value : this.store),
        forecast: (forecast != null ? forecast.value : this.forecast),
        employee: (employee != null ? employee.value : this.employee),
        deliveredAt:
            (deliveredAt != null ? deliveredAt.value : this.deliveredAt),
        outAt: (outAt != null ? outAt.value : this.outAt),
        scannedOutside: (scannedOutside != null
            ? scannedOutside.value
            : this.scannedOutside),
        remark: (remark != null ? remark.value : this.remark),
        images: (images != null ? images.value : this.images),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee({
    this.id,
    this.$id,
    this.name,
    this.token,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.store,
    this.status,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$EmployeeToJson(
          this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final String? $id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store?
      store;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$EmployeeExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? token,
      String? password,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store? store,
      String? status}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        token: token ?? this.token,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        store: store ?? this.store,
        status: status ?? this.status);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? $id,
      Wrapped<String?>? name,
      Wrapped<String?>? token,
      Wrapped<String?>? password,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store?>?
          store,
      Wrapped<String?>? status}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        token: (token != null ? token.value : this.token),
        password: (password != null ? password.value : this.password),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan({
    this.id,
    this.$id,
    this.qrUrl,
    this.status,
    this.plant,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$WatercanFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$WatercanToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$WatercanToJson(
          this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'qr_url')
  final String? qrUrl;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'plant')
  final String? plant;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$WatercanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plant) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$WatercanExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan copyWith(
      {String? id, double? $id, String? qrUrl, String? status, String? plant}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status,
        plant: plant ?? this.plant);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<double?>? $id,
      Wrapped<String?>? qrUrl,
      Wrapped<String?>? status,
      Wrapped<String?>? plant}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        qrUrl: (qrUrl != null ? qrUrl.value : this.qrUrl),
        status: (status != null ? status.value : this.status),
        plant: (plant != null ? plant.value : this.plant));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$ForecastToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store
      store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$ForecastExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store? store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate {
  const EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthLoginPost$Response$Data$Store$CoordinateFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreAuthLoginPost$Response$Data$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthLoginPost$Response$Data$Store$CoordinateToJson(this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreAuthLoginPost$Response$Data$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthLoginPost$Response$Data$Store$CoordinateExtension
    on EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate {
  EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate copyWithWrapped(
      {Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate {
  const EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreAuthMeGet$Response$Data$Store$CoordinateFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreAuthMeGet$Response$Data$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreAuthMeGet$Response$Data$Store$CoordinateToJson(this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreAuthMeGet$Response$Data$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreAuthMeGet$Response$Data$Store$CoordinateExtension
    on EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate {
  EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate copyWithWrapped(
      {Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$StoreExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$ForecastToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store
      store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$ForecastExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store?
          store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee({
    required this.id,
    required this.$id,
    required this.name,
    required this.password,
    required this.plant,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$EmployeeToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final String $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'plant')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant
      plant;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$EmployeeExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? password,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant?
          plant,
      String? status,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        password: password ?? this.password,
        plant: plant ?? this.plant,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? $id,
      Wrapped<String>? name,
      Wrapped<String>? password,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant>?
          plant,
      Wrapped<String>? status,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        password: (password != null ? password.value : this.password),
        plant: (plant != null ? plant.value : this.plant),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$StoreExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$StoreExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$ForecastToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store
      store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$ForecastExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store? store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee({
    required this.id,
    required this.$id,
    required this.name,
    required this.password,
    required this.plant,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$EmployeeToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final String $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'plant')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant
      plant;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$EmployeeExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? password,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant? plant,
      String? status,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        password: password ?? this.password,
        plant: plant ?? this.plant,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? $id,
      Wrapped<String>? name,
      Wrapped<String>? password,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant>?
          plant,
      Wrapped<String>? status,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        password: (password != null ? password.value : this.password),
        plant: (plant != null ? plant.value : this.plant),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$StoreExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$StoreFromJson(json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$StoreExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$ForecastToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$ForecastExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store? store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee({
    required this.id,
    required this.$id,
    required this.name,
    required this.password,
    required this.plant,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$EmployeeToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final String $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'plant')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant plant;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$EmployeeExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? password,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant? plant,
      String? status,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        password: password ?? this.password,
        plant: plant ?? this.plant,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? $id,
      Wrapped<String>? name,
      Wrapped<String>? password,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant>?
          plant,
      Wrapped<String>? status,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        password: (password != null ? password.value : this.password),
        plant: (plant != null ? plant.value : this.plant),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$StoreExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate copyWithWrapped(
      {Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$StoreToJson(this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$StoreExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$ForecastToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store
      store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$ForecastExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store?
          store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee({
    required this.id,
    required this.$id,
    required this.name,
    required this.password,
    required this.plant,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$EmployeeToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final String $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'plant')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant
      plant;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$EmployeeExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? password,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant?
          plant,
      String? status,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        password: password ?? this.password,
        plant: plant ?? this.plant,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? $id,
      Wrapped<String>? name,
      Wrapped<String>? password,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant>?
          plant,
      Wrapped<String>? status,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        password: (password != null ? password.value : this.password),
        plant: (plant != null ? plant.value : this.plant),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$StoreExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate {
  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan {
  const EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan({
    this.id,
    this.$id,
    this.qrUrl,
    this.status,
    this.plant,
  });

  factory EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$WatercanFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$WatercanToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$WatercanToJson(
          this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'qr_url')
  final String? qrUrl;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'plant')
  final String? plant;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$WatercanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plant) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$WatercanExtension
    on EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan {
  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan
      copyWith(
          {String? id,
          double? $id,
          String? qrUrl,
          String? status,
          String? plant}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status,
        plant: plant ?? this.plant);
  }

  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan
      copyWithWrapped(
          {Wrapped<String?>? id,
          Wrapped<double?>? $id,
          Wrapped<String?>? qrUrl,
          Wrapped<String?>? status,
          Wrapped<String?>? plant}) {
    return EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        qrUrl: (qrUrl != null ? qrUrl.value : this.qrUrl),
        status: (status != null ? status.value : this.status),
        plant: (plant != null ? plant.value : this.plant));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan {
  const EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan({
    this.id,
    this.$id,
    this.qrUrl,
    this.status,
    this.plant,
  });

  factory EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$WatercanFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$WatercanToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$WatercanToJson(
          this);

  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'qr_url')
  final String? qrUrl;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'plant')
  final String? plant;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$WatercanFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plant) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$WatercanExtension
    on EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan {
  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan
      copyWith(
          {String? id,
          double? $id,
          String? qrUrl,
          String? status,
          String? plant}) {
    return EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status,
        plant: plant ?? this.plant);
  }

  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan
      copyWithWrapped(
          {Wrapped<String?>? id,
          Wrapped<double?>? $id,
          Wrapped<String?>? qrUrl,
          Wrapped<String?>? status,
          Wrapped<String?>? plant}) {
    return EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        qrUrl: (qrUrl != null ? qrUrl.value : this.qrUrl),
        status: (status != null ? status.value : this.status),
        plant: (plant != null ? plant.value : this.plant));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$StoreExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$ForecastToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store
      store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$ForecastExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store?
          store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double>? watercans,
      Wrapped<String>? date,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store>?
          store,
      Wrapped<String>? status,
      Wrapped<bool>? storeAdminApproval,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee({
    required this.id,
    required this.$id,
    required this.name,
    required this.password,
    required this.plant,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$EmployeeToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final String $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'plant')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant
      plant;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$EmployeeExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? password,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant?
          plant,
      String? status,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        password: password ?? this.password,
        plant: plant ?? this.plant,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? $id,
      Wrapped<String>? name,
      Wrapped<String>? password,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant>?
          plant,
      Wrapped<String>? status,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        password: (password != null ? password.value : this.password),
        plant: (plant != null ? plant.value : this.plant),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$StoreExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$ForecastToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store
      store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$ForecastExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store?
          store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<double>? watercans,
          Wrapped<String>? date,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store>?
              store,
          Wrapped<String>? status,
          Wrapped<bool>? storeAdminApproval,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee({
    required this.id,
    required this.$id,
    required this.name,
    required this.password,
    required this.plant,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$EmployeeToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final String $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'plant')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant
      plant;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$EmployeeExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? password,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant?
          plant,
      String? status,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        password: password ?? this.password,
        plant: plant ?? this.plant,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? $id,
          Wrapped<String>? name,
          Wrapped<String>? password,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant>?
              plant,
          Wrapped<String>? status,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        password: (password != null ? password.value : this.password),
        plant: (plant != null ? plant.value : this.plant),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<double?>? $id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate>?
              coordinate,
          Wrapped<String?>? code,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast({
    required this.id,
    required this.watercans,
    required this.date,
    required this.store,
    required this.status,
    required this.storeAdminApproval,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$ForecastFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$ForecastToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$ForecastToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'watercans')
  final double watercans;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store
      store;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'store_admin_approval')
  final bool storeAdminApproval;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$ForecastFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watercans, watercans) ||
                const DeepCollectionEquality()
                    .equals(other.watercans, watercans)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.store, store) ||
                const DeepCollectionEquality().equals(other.store, store)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.storeAdminApproval, storeAdminApproval) ||
                const DeepCollectionEquality()
                    .equals(other.storeAdminApproval, storeAdminApproval)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watercans) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(store) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(storeAdminApproval) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$ForecastExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast copyWith(
      {String? id,
      double? watercans,
      String? date,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store?
          store,
      String? status,
      bool? storeAdminApproval,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast(
        id: id ?? this.id,
        watercans: watercans ?? this.watercans,
        date: date ?? this.date,
        store: store ?? this.store,
        status: status ?? this.status,
        storeAdminApproval: storeAdminApproval ?? this.storeAdminApproval,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<double>? watercans,
          Wrapped<String>? date,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store>?
              store,
          Wrapped<String>? status,
          Wrapped<bool>? storeAdminApproval,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast(
        id: (id != null ? id.value : this.id),
        watercans: (watercans != null ? watercans.value : this.watercans),
        date: (date != null ? date.value : this.date),
        store: (store != null ? store.value : this.store),
        status: (status != null ? status.value : this.status),
        storeAdminApproval: (storeAdminApproval != null
            ? storeAdminApproval.value
            : this.storeAdminApproval),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee({
    required this.id,
    required this.$id,
    required this.name,
    required this.password,
    required this.plant,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$EmployeeFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$EmployeeToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$EmployeeToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final String $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'plant')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant
      plant;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$EmployeeExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee copyWith(
      {String? id,
      String? $id,
      String? name,
      String? password,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant?
          plant,
      String? status,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        password: password ?? this.password,
        plant: plant ?? this.plant,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? $id,
          Wrapped<String>? name,
          Wrapped<String>? password,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant>?
              plant,
          Wrapped<String>? status,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        password: (password != null ? password.value : this.password),
        plant: (plant != null ? plant.value : this.plant),
        status: (status != null ? status.value : this.status),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<double?>? $id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate>?
              coordinate,
          Wrapped<String?>? code,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<double?>? $id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate>?
              coordinate,
          Wrapped<String?>? code,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt,
          Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector>?
              sector}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant({
    required this.id,
    required this.name,
    required this.address,
    required this.coordinate,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$PlantFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$PlantToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$PlantToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate
      coordinate;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$PlantFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$PlantExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant copyWith(
      {String? id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate?
          coordinate,
      double? type,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate>?
              coordinate,
          Wrapped<double>? type,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        type: (type != null ? type.value : this.type),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City>?
          city,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant({
    required this.id,
    required this.name,
    required this.address,
    required this.coordinate,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$PlantFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$PlantToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$PlantToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate
      coordinate;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$PlantFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$PlantExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant copyWith(
      {String? id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate?
          coordinate,
      double? type,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate>?
              coordinate,
          Wrapped<double>? type,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        type: (type != null ? type.value : this.type),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate copyWith(
      {double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City>?
          city,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant({
    required this.id,
    required this.name,
    required this.address,
    required this.coordinate,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$PlantFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$PlantToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$PlantToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate
      coordinate;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$PlantFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$PlantExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant copyWith(
      {String? id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate?
          coordinate,
      double? type,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate>?
          coordinate,
      Wrapped<double>? type,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        type: (type != null ? type.value : this.type),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant({
    required this.id,
    required this.name,
    required this.address,
    required this.coordinate,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$PlantFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$PlantToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$PlantToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate
      coordinate;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$PlantFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$PlantExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant copyWith(
      {String? id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate?
          coordinate,
      double? type,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate>?
              coordinate,
          Wrapped<double>? type,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        type: (type != null ? type.value : this.type),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<double?>? $id,
      Wrapped<String>? name,
      Wrapped<String>? address,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate>?
          coordinate,
      Wrapped<String?>? code,
      Wrapped<String>? createdAt,
      Wrapped<String>? updatedAt,
      Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector>?
          sector}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant({
    required this.id,
    required this.name,
    required this.address,
    required this.coordinate,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$PlantFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$PlantToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$PlantToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate
      coordinate;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$PlantFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$PlantExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant copyWith(
      {String? id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate?
          coordinate,
      double? type,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate>?
              coordinate,
          Wrapped<double>? type,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        type: (type != null ? type.value : this.type),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<double?>? $id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate>?
              coordinate,
          Wrapped<String?>? code,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector>?
              sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant({
    required this.id,
    required this.name,
    required this.address,
    required this.coordinate,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$PlantFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$PlantToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$PlantToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate
      coordinate;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$PlantFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$PlantExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant
      copyWith(
          {String? id,
          String? name,
          String? address,
          EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate?
              coordinate,
          double? type,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate>?
              coordinate,
          Wrapped<double>? type,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        type: (type != null ? type.value : this.type),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector
      copyWith(
          {String? id,
          String? name,
          EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City?
              city,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store({
    required this.id,
    this.$id,
    required this.name,
    required this.address,
    required this.coordinate,
    this.code,
    required this.createdAt,
    required this.updatedAt,
    required this.sector,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$StoreFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$StoreToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$StoreToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'id')
  final double? $id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate
      coordinate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  @JsonKey(name: 'sector')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector
      sector;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$StoreFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.$id, $id) ||
                const DeepCollectionEquality().equals(other.$id, $id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.sector, sector) ||
                const DeepCollectionEquality().equals(other.sector, sector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash($id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(sector) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$StoreExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store copyWith(
      {String? id,
      double? $id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate?
          coordinate,
      String? code,
      String? createdAt,
      String? updatedAt,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector?
          sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store(
        id: id ?? this.id,
        $id: $id ?? this.$id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        code: code ?? this.code,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        sector: sector ?? this.sector);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<double?>? $id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate>?
              coordinate,
          Wrapped<String?>? code,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector>?
              sector}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store(
        id: (id != null ? id.value : this.id),
        $id: ($id != null ? $id.value : this.$id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        code: (code != null ? code.value : this.code),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        sector: (sector != null ? sector.value : this.sector));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant({
    required this.id,
    required this.name,
    required this.address,
    required this.coordinate,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$PlantFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$PlantToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$PlantToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'coordinate')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate
      coordinate;
  @JsonKey(name: 'type')
  final double type;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$PlantFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$PlantExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant copyWith(
      {String? id,
      String? name,
      String? address,
      EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate?
          coordinate,
      double? type,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        coordinate: coordinate ?? this.coordinate,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? address,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate>?
              coordinate,
          Wrapped<double>? type,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        address: (address != null ? address.value : this.address),
        coordinate: (coordinate != null ? coordinate.value : this.coordinate),
        type: (type != null ? type.value : this.type),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector
      copyWith(
          {String? id,
          String? name,
          EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City?
              city,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector
      copyWith(
          {String? id,
          String? name,
          EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City?
              city,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$CoordinateExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Employee$Plant$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector
      copyWith(
          {String? id,
          String? name,
          EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City?
              city,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Employee$Plant$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City copyWith(
      {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector copyWith(
      {String? id,
      String? name,
      EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City?
          city,
      String? createdAt,
      String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$CoordinateExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Employee$Plant$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector
      copyWith(
          {String? id,
          String? name,
          EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City?
              city,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$CoordinateExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Employee$Plant$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector
      copyWith(
          {String? id,
          String? name,
          EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City?
              city,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$CoordinateExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Employee$Plant$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector
      copyWith(
          {String? id,
          String? name,
          EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City?
              city,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Employee$Plant$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector({
    required this.id,
    required this.name,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$SectorFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$SectorToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$SectorToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'city')
  final EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City
      city;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$SectorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$SectorExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector
      copyWith(
          {String? id,
          String? name,
          EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City?
              city,
          String? createdAt,
          String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City>?
              city,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        city: (city != null ? city.value : this.city),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate({
    required this.lat,
    required this.long,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$CoordinateFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$CoordinateToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$CoordinateToJson(
          this);

  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$CoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$CoordinateExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate
      copyWith({double? lat, double? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate(
        lat: lat ?? this.lat, long: long ?? this.long);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate
      copyWithWrapped({Wrapped<double>? lat, Wrapped<double>? long}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Employee$Plant$Coordinate(
        lat: (lat != null ? lat.value : this.lat),
        long: (long != null ? long.value : this.long));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City {
  const EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$CityFromJson(
          json);

  static const toJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$CityToJson;
  Map<String, dynamic> toJson() =>
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$CityToJson(
          this);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @JsonKey(name: 'updatedAt')
  final String updatedAt;
  static const fromJsonFactory =
      _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$CityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$CityExtension
    on EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City {
  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City
      copyWith(
          {String? id, String? name, String? createdAt, String? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City
      copyWithWrapped(
          {Wrapped<String>? id,
          Wrapped<String>? name,
          Wrapped<String>? createdAt,
          Wrapped<String>? updatedAt}) {
    return EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector$City(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
