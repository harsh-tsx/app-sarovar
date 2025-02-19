// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_api.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeStoreAuthLoginPost$RequestBody
    _$EmployeeStoreAuthLoginPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreAuthLoginPost$RequestBody(
          id: json['id'] as String,
          password: json['password'] as String,
        );

Map<String, dynamic> _$EmployeeStoreAuthLoginPost$RequestBodyToJson(
        EmployeeStoreAuthLoginPost$RequestBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
    };

EmployeeStoreEmployeeOrdersPost$RequestBody
    _$EmployeeStoreEmployeeOrdersPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$RequestBody(
          watercan: json['watercan'] as String,
          store: json['store'],
          type: json['type'],
          order: json['order'],
          forecast: json['forecast'],
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersPost$RequestBodyToJson(
        EmployeeStoreEmployeeOrdersPost$RequestBody instance) =>
    <String, dynamic>{
      'watercan': instance.watercan,
      'store': instance.store,
      'type': instance.type,
      'order': instance.order,
      'forecast': instance.forecast,
    };

EmployeeStoreEmployeeOrdersPut$RequestBody
    _$EmployeeStoreEmployeeOrdersPut$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$RequestBody(
          watercan: json['watercan'] as String,
          store: json['store'],
          type: json['type'],
          order: json['order'],
          forecast: json['forecast'],
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersPut$RequestBodyToJson(
        EmployeeStoreEmployeeOrdersPut$RequestBody instance) =>
    <String, dynamic>{
      'watercan': instance.watercan,
      'store': instance.store,
      'type': instance.type,
      'order': instance.order,
      'forecast': instance.forecast,
    };

EmployeeStoreEmployeeOrdersOutPost$RequestBody
    _$EmployeeStoreEmployeeOrdersOutPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$RequestBody(
          watercans: (json['watercans'] as num).toDouble(),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersOutPost$RequestBodyToJson(
        EmployeeStoreEmployeeOrdersOutPost$RequestBody instance) =>
    <String, dynamic>{
      'watercans': instance.watercans,
    };

EmployeeStoreEmployeeOrdersConfirmPost$RequestBody
    _$EmployeeStoreEmployeeOrdersConfirmPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$RequestBody(
          images: json['IMAGES'],
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersConfirmPost$RequestBodyToJson(
        EmployeeStoreEmployeeOrdersConfirmPost$RequestBody instance) =>
    <String, dynamic>{
      'IMAGES': instance.images,
    };

EmployeeStoreEmployeeOrdersConfirmPut$RequestBody
    _$EmployeeStoreEmployeeOrdersConfirmPut$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$RequestBody(
          images: json['IMAGES'],
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersConfirmPut$RequestBodyToJson(
        EmployeeStoreEmployeeOrdersConfirmPut$RequestBody instance) =>
    <String, dynamic>{
      'IMAGES': instance.images,
    };

EmployeeStoreStoreComplaintPost$RequestBody
    _$EmployeeStoreStoreComplaintPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintPost$RequestBody(
          order: json['order'] as String,
          type: json['type'] as String,
          watercans: json['watercans'] as String,
          description: json['description'] as String,
          images: json['images'] as Object,
          store: json['store'] as String?,
          storeEmployee: json['store_employee'] as String?,
          id: (json['id'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintPost$RequestBodyToJson(
        EmployeeStoreStoreComplaintPost$RequestBody instance) =>
    <String, dynamic>{
      'order': instance.order,
      'type': instance.type,
      'watercans': instance.watercans,
      'description': instance.description,
      'images': instance.images,
      'store': instance.store,
      'store_employee': instance.storeEmployee,
      'id': instance.id,
    };

EmployeeStoreStoreComplaintPut$RequestBody
    _$EmployeeStoreStoreComplaintPut$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintPut$RequestBody(
          watercans: (json['watercans'] as num).toInt(),
          date: json['date'] as String,
          store: json['store'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool?,
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintPut$RequestBodyToJson(
        EmployeeStoreStoreComplaintPut$RequestBody instance) =>
    <String, dynamic>{
      'watercans': instance.watercans,
      'date': instance.date,
      'store': instance.store,
      'store_admin_approval': instance.storeAdminApproval,
    };

EmployeeStoreForecastPost$RequestBody
    _$EmployeeStoreForecastPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreForecastPost$RequestBody(
          watercans: (json['watercans'] as num).toInt(),
          date: json['date'] as String,
        );

Map<String, dynamic> _$EmployeeStoreForecastPost$RequestBodyToJson(
        EmployeeStoreForecastPost$RequestBody instance) =>
    <String, dynamic>{
      'watercans': instance.watercans,
      'date': instance.date,
    };

EmployeeStoreAuthLoginPost$Response
    _$EmployeeStoreAuthLoginPost$ResponseFromJson(Map<String, dynamic> json) =>
        EmployeeStoreAuthLoginPost$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreAuthLoginPost$Response$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreAuthLoginPost$ResponseToJson(
        EmployeeStoreAuthLoginPost$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreAuthMeGet$Response _$EmployeeStoreAuthMeGet$ResponseFromJson(
        Map<String, dynamic> json) =>
    EmployeeStoreAuthMeGet$Response(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: EmployeeStoreAuthMeGet$Response$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeStoreAuthMeGet$ResponseToJson(
        EmployeeStoreAuthMeGet$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data.toJson(),
    };

EmployeeStoreEmployeeOrdersGet$Response
    _$EmployeeStoreEmployeeOrdersGet$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  EmployeeStoreEmployeeOrdersGet$Response$Data$Item.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          meta: EmployeeStoreEmployeeOrdersGet$Response$Meta.fromJson(
              json['meta'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersGet$ResponseToJson(
        EmployeeStoreEmployeeOrdersGet$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

EmployeeStoreEmployeeOrdersPost$Response
    _$EmployeeStoreEmployeeOrdersPost$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreEmployeeOrdersPost$Response$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersPost$ResponseToJson(
        EmployeeStoreEmployeeOrdersPost$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreEmployeeOrdersPut$Response
    _$EmployeeStoreEmployeeOrdersPut$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreEmployeeOrdersPut$Response$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersPut$ResponseToJson(
        EmployeeStoreEmployeeOrdersPut$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreEmployeeOrdersDelete$Response
    _$EmployeeStoreEmployeeOrdersDelete$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: EmployeeStoreEmployeeOrdersDelete$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersDelete$ResponseToJson(
        EmployeeStoreEmployeeOrdersDelete$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data.toJson(),
    };

EmployeeStoreEmployeeOrdersActiveOrderGet$Response
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveOrderGet$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersActiveOrderGet$ResponseToJson(
        EmployeeStoreEmployeeOrdersActiveOrderGet$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response
    _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$ResponseToJson(
        EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreEmployeeOrdersOutPost$Response
    _$EmployeeStoreEmployeeOrdersOutPost$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreEmployeeOrdersOutPost$Response$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersOutPost$ResponseToJson(
        EmployeeStoreEmployeeOrdersOutPost$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreEmployeeOrdersConfirmPost$Response
    _$EmployeeStoreEmployeeOrdersConfirmPost$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreEmployeeOrdersConfirmPost$Response$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersConfirmPost$ResponseToJson(
        EmployeeStoreEmployeeOrdersConfirmPost$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreEmployeeOrdersConfirmPut$Response
    _$EmployeeStoreEmployeeOrdersConfirmPut$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreEmployeeOrdersConfirmPut$Response$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersConfirmPut$ResponseToJson(
        EmployeeStoreEmployeeOrdersConfirmPut$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreStoreComplaintGet$Response
    _$EmployeeStoreStoreComplaintGet$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintGet$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  EmployeeStoreStoreComplaintGet$Response$Data$Item.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          meta: EmployeeStoreStoreComplaintGet$Response$Meta.fromJson(
              json['meta'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintGet$ResponseToJson(
        EmployeeStoreStoreComplaintGet$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

EmployeeStoreStoreComplaintPost$Response
    _$EmployeeStoreStoreComplaintPost$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintPost$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreStoreComplaintPost$Response$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintPost$ResponseToJson(
        EmployeeStoreStoreComplaintPost$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreStoreComplaintPut$Response
    _$EmployeeStoreStoreComplaintPut$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintPut$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: EmployeeStoreStoreComplaintPut$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintPut$ResponseToJson(
        EmployeeStoreStoreComplaintPut$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data.toJson(),
    };

EmployeeStoreStoreComplaintDelete$Response
    _$EmployeeStoreStoreComplaintDelete$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintDelete$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: EmployeeStoreStoreComplaintDelete$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintDelete$ResponseToJson(
        EmployeeStoreStoreComplaintDelete$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data.toJson(),
    };

EmployeeStoreDashboardHomeGet$Response
    _$EmployeeStoreDashboardHomeGet$ResponseFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreDashboardHomeGet$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: json['data'] == null
              ? null
              : EmployeeStoreDashboardHomeGet$Response$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreDashboardHomeGet$ResponseToJson(
        EmployeeStoreDashboardHomeGet$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreOrdersGet$Response _$EmployeeStoreOrdersGet$ResponseFromJson(
        Map<String, dynamic> json) =>
    EmployeeStoreOrdersGet$Response(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => EmployeeStoreOrdersGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      meta: EmployeeStoreOrdersGet$Response$Meta.fromJson(
          json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeStoreOrdersGet$ResponseToJson(
        EmployeeStoreOrdersGet$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

EmployeeStoreReturnOrderGet$Response
    _$EmployeeStoreReturnOrderGet$ResponseFromJson(Map<String, dynamic> json) =>
        EmployeeStoreReturnOrderGet$Response(
          status: json['status'] as bool,
          message: json['message'] as String,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  EmployeeStoreReturnOrderGet$Response$Data$Item.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          meta: EmployeeStoreReturnOrderGet$Response$Meta.fromJson(
              json['meta'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$EmployeeStoreReturnOrderGet$ResponseToJson(
        EmployeeStoreReturnOrderGet$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

EmployeeStoreForecastGet$Response _$EmployeeStoreForecastGet$ResponseFromJson(
        Map<String, dynamic> json) =>
    EmployeeStoreForecastGet$Response(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => EmployeeStoreForecastGet$Response$Data$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      meta: EmployeeStoreForecastGet$Response$Meta.fromJson(
          json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeStoreForecastGet$ResponseToJson(
        EmployeeStoreForecastGet$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

EmployeeStoreForecastPost$Response _$EmployeeStoreForecastPost$ResponseFromJson(
        Map<String, dynamic> json) =>
    EmployeeStoreForecastPost$Response(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : EmployeeStoreForecastPost$Response$Data.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeStoreForecastPost$ResponseToJson(
        EmployeeStoreForecastPost$Response instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

EmployeeStoreAuthLoginPost$Response$Data
    _$EmployeeStoreAuthLoginPost$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreAuthLoginPost$Response$Data(
          id: json['_id'] as String?,
          $id: json['id'] as String?,
          name: json['name'] as String?,
          token: json['token'] as String?,
          password: json['password'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreAuthLoginPost$Response$Data$Store.fromJson(
                  json['store'] as Map<String, dynamic>),
          status: json['status'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreAuthLoginPost$Response$DataToJson(
        EmployeeStoreAuthLoginPost$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'token': instance.token,
      'password': instance.password,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'store': instance.store?.toJson(),
      'status': instance.status,
    };

EmployeeStoreAuthMeGet$Response$Data
    _$EmployeeStoreAuthMeGet$Response$DataFromJson(Map<String, dynamic> json) =>
        EmployeeStoreAuthMeGet$Response$Data(
          id: json['_id'] as String?,
          $id: json['id'] as String?,
          name: json['name'] as String?,
          token: json['token'] as String?,
          password: json['password'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreAuthMeGet$Response$Data$Store.fromJson(
                  json['store'] as Map<String, dynamic>),
          status: json['status'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreAuthMeGet$Response$DataToJson(
        EmployeeStoreAuthMeGet$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'token': instance.token,
      'password': instance.password,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'store': instance.store?.toJson(),
      'status': instance.status,
    };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item(
          id: json['_id'] as String,
          type: json['type'] as String,
          order:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order.fromJson(
                  json['order'] as Map<String, dynamic>),
          employee: EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee
              .fromJson(json['employee'] as Map<String, dynamic>),
          watercan: EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan
              .fromJson(json['watercan'] as Map<String, dynamic>),
          store:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store.fromJson(
                  json['store'] as Map<String, dynamic>),
          forecast: EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast
              .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersGet$Response$Data$ItemToJson(
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'order': instance.order.toJson(),
      'employee': instance.employee.toJson(),
      'watercan': instance.watercan.toJson(),
      'store': instance.store.toJson(),
      'forecast': instance.forecast.toJson(),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersGet$Response$Meta
    _$EmployeeStoreEmployeeOrdersGet$Response$MetaFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Meta(
          pages: (json['pages'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          size: (json['size'] as num).toDouble(),
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersGet$Response$MetaToJson(
        EmployeeStoreEmployeeOrdersGet$Response$Meta instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
    };

EmployeeStoreEmployeeOrdersPost$Response$Data
    _$EmployeeStoreEmployeeOrdersPost$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data(
          id: json['_id'] as String,
          type: json['type'] as String,
          order: EmployeeStoreEmployeeOrdersPost$Response$Data$Order.fromJson(
              json['order'] as Map<String, dynamic>),
          employee:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Employee.fromJson(
                  json['employee'] as Map<String, dynamic>),
          watercan:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan.fromJson(
                  json['watercan'] as Map<String, dynamic>),
          store: EmployeeStoreEmployeeOrdersPost$Response$Data$Store.fromJson(
              json['store'] as Map<String, dynamic>),
          forecast:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast.fromJson(
                  json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersPost$Response$DataToJson(
        EmployeeStoreEmployeeOrdersPost$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'order': instance.order.toJson(),
      'employee': instance.employee.toJson(),
      'watercan': instance.watercan.toJson(),
      'store': instance.store.toJson(),
      'forecast': instance.forecast.toJson(),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersPut$Response$Data
    _$EmployeeStoreEmployeeOrdersPut$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data(
          id: json['_id'] as String,
          type: json['type'] as String,
          order: EmployeeStoreEmployeeOrdersPut$Response$Data$Order.fromJson(
              json['order'] as Map<String, dynamic>),
          employee:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Employee.fromJson(
                  json['employee'] as Map<String, dynamic>),
          watercan:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan.fromJson(
                  json['watercan'] as Map<String, dynamic>),
          store: EmployeeStoreEmployeeOrdersPut$Response$Data$Store.fromJson(
              json['store'] as Map<String, dynamic>),
          forecast:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast.fromJson(
                  json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersPut$Response$DataToJson(
        EmployeeStoreEmployeeOrdersPut$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'order': instance.order.toJson(),
      'employee': instance.employee.toJson(),
      'watercan': instance.watercan.toJson(),
      'store': instance.store.toJson(),
      'forecast': instance.forecast.toJson(),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersDelete$Response$Data
    _$EmployeeStoreEmployeeOrdersDelete$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data(
          id: json['_id'] as String,
          type: json['type'] as String,
          order: EmployeeStoreEmployeeOrdersDelete$Response$Data$Order.fromJson(
              json['order'] as Map<String, dynamic>),
          employee:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee.fromJson(
                  json['employee'] as Map<String, dynamic>),
          watercan:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan.fromJson(
                  json['watercan'] as Map<String, dynamic>),
          store: EmployeeStoreEmployeeOrdersDelete$Response$Data$Store.fromJson(
              json['store'] as Map<String, dynamic>),
          forecast:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast.fromJson(
                  json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersDelete$Response$DataToJson(
        EmployeeStoreEmployeeOrdersDelete$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'order': instance.order.toJson(),
      'employee': instance.employee.toJson(),
      'watercan': instance.watercan.toJson(),
      'store': instance.store.toJson(),
      'forecast': instance.forecast.toJson(),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data(
          id: json['_id'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          date: json['date'] as String?,
          status: json['status'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          forecast: json['forecast'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          employeeOrder: (json['employee_order'] as List<dynamic>?)
              ?.map((e) =>
                  EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$DataToJson(
            EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'status': instance.status,
          'store': instance.store?.toJson(),
          'forecast': instance.forecast,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'employee_order':
              instance.employeeOrder?.map((e) => e.toJson()).toList(),
        };

EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data
    _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data(
          id: json['_id'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          date: json['date'] as String?,
          status: json['status'] as String?,
          store: json['store'] as String?,
          forecast: json['forecast'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          employeeOrder: (json['employee_order'] as List<dynamic>?)
              ?.map((e) =>
                  EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$DataToJson(
            EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'status': instance.status,
          'store': instance.store,
          'forecast': instance.forecast,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'employee_order':
              instance.employeeOrder?.map((e) => e.toJson()).toList(),
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data
    _$EmployeeStoreEmployeeOrdersOutPost$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data(
          id: json['_id'] as String,
          type: json['type'] as String,
          order:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order.fromJson(
                  json['order'] as Map<String, dynamic>),
          employee: EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee
              .fromJson(json['employee'] as Map<String, dynamic>),
          watercan: EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan
              .fromJson(json['watercan'] as Map<String, dynamic>),
          store:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store.fromJson(
                  json['store'] as Map<String, dynamic>),
          forecast: EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast
              .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersOutPost$Response$DataToJson(
        EmployeeStoreEmployeeOrdersOutPost$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'order': instance.order.toJson(),
      'employee': instance.employee.toJson(),
      'watercan': instance.watercan.toJson(),
      'store': instance.store.toJson(),
      'forecast': instance.forecast.toJson(),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data(
          id: json['_id'] as String,
          type: json['type'] as String,
          order: EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order
              .fromJson(json['order'] as Map<String, dynamic>),
          employee:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee
                  .fromJson(json['employee'] as Map<String, dynamic>),
          watercan:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan
                  .fromJson(json['watercan'] as Map<String, dynamic>),
          store: EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          forecast:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast
                  .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$DataToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'type': instance.type,
          'order': instance.order.toJson(),
          'employee': instance.employee.toJson(),
          'watercan': instance.watercan.toJson(),
          'store': instance.store.toJson(),
          'forecast': instance.forecast.toJson(),
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data(
          id: json['_id'] as String,
          type: json['type'] as String,
          order: EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order
              .fromJson(json['order'] as Map<String, dynamic>),
          employee: EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee
              .fromJson(json['employee'] as Map<String, dynamic>),
          watercan: EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan
              .fromJson(json['watercan'] as Map<String, dynamic>),
          store: EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          forecast: EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast
              .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$DataToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'type': instance.type,
          'order': instance.order.toJson(),
          'employee': instance.employee.toJson(),
          'watercan': instance.watercan.toJson(),
          'store': instance.store.toJson(),
          'forecast': instance.forecast.toJson(),
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreStoreComplaintGet$Response$Data$Item
    _$EmployeeStoreStoreComplaintGet$Response$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintGet$Response$Data$Item(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          store: json['store'] as String?,
          type: json['type'] as String?,
          order: json['order'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          status: json['status'] as String?,
          description: json['description'] as String?,
          images: (json['images'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
          storeEmployee: json['store_employee'] as String?,
          storeAdmin: json['store_admin'] as String?,
          storeAdminApproval: json['store_admin_approval'] as bool?,
          plantAdmin: json['plant_admin'] as String?,
          remark: json['remark'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintGet$Response$Data$ItemToJson(
        EmployeeStoreStoreComplaintGet$Response$Data$Item instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'store': instance.store,
      'type': instance.type,
      'order': instance.order,
      'watercans': instance.watercans,
      'status': instance.status,
      'description': instance.description,
      'images': instance.images,
      'store_employee': instance.storeEmployee,
      'store_admin': instance.storeAdmin,
      'store_admin_approval': instance.storeAdminApproval,
      'plant_admin': instance.plantAdmin,
      'remark': instance.remark,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreStoreComplaintGet$Response$Meta
    _$EmployeeStoreStoreComplaintGet$Response$MetaFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintGet$Response$Meta(
          pages: (json['pages'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          size: (json['size'] as num).toDouble(),
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintGet$Response$MetaToJson(
        EmployeeStoreStoreComplaintGet$Response$Meta instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
    };

EmployeeStoreStoreComplaintPost$Response$Data
    _$EmployeeStoreStoreComplaintPost$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintPost$Response$Data(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          store: json['store'] as String?,
          type: json['type'] as String?,
          order: json['order'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          status: json['status'] as String?,
          description: json['description'] as String?,
          images: (json['images'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          storeEmployee: json['store_employee'] as String?,
          storeAdmin: json['store_admin'] as String?,
          storeAdminApproval: json['store_admin_approval'] as bool?,
          plantAdmin: json['plant_admin'] as String?,
          remark: json['remark'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintPost$Response$DataToJson(
        EmployeeStoreStoreComplaintPost$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'store': instance.store,
      'type': instance.type,
      'order': instance.order,
      'watercans': instance.watercans,
      'status': instance.status,
      'description': instance.description,
      'images': instance.images,
      'store_employee': instance.storeEmployee,
      'store_admin': instance.storeAdmin,
      'store_admin_approval': instance.storeAdminApproval,
      'plant_admin': instance.plantAdmin,
      'remark': instance.remark,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreStoreComplaintPut$Response$Data
    _$EmployeeStoreStoreComplaintPut$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintPut$Response$Data(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          store: json['store'] as String?,
          type: json['type'] as String?,
          order: json['order'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          status: json['status'] as String?,
          description: json['description'] as String?,
          images: (json['images'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          storeEmployee: json['store_employee'] as String?,
          storeAdmin: json['store_admin'] as String?,
          storeAdminApproval: json['store_admin_approval'] as bool?,
          plantAdmin: json['plant_admin'] as String?,
          remark: json['remark'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintPut$Response$DataToJson(
        EmployeeStoreStoreComplaintPut$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'store': instance.store,
      'type': instance.type,
      'order': instance.order,
      'watercans': instance.watercans,
      'status': instance.status,
      'description': instance.description,
      'images': instance.images,
      'store_employee': instance.storeEmployee,
      'store_admin': instance.storeAdmin,
      'store_admin_approval': instance.storeAdminApproval,
      'plant_admin': instance.plantAdmin,
      'remark': instance.remark,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreStoreComplaintDelete$Response$Data
    _$EmployeeStoreStoreComplaintDelete$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreStoreComplaintDelete$Response$Data(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          store: json['store'] as String?,
          type: json['type'] as String?,
          order: json['order'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          status: json['status'] as String?,
          description: json['description'] as String?,
          images: (json['images'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          storeEmployee: json['store_employee'] as String?,
          storeAdmin: json['store_admin'] as String?,
          storeAdminApproval: json['store_admin_approval'] as bool?,
          plantAdmin: json['plant_admin'] as String?,
          remark: json['remark'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreStoreComplaintDelete$Response$DataToJson(
        EmployeeStoreStoreComplaintDelete$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'store': instance.store,
      'type': instance.type,
      'order': instance.order,
      'watercans': instance.watercans,
      'status': instance.status,
      'description': instance.description,
      'images': instance.images,
      'store_employee': instance.storeEmployee,
      'store_admin': instance.storeAdmin,
      'store_admin_approval': instance.storeAdminApproval,
      'plant_admin': instance.plantAdmin,
      'remark': instance.remark,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreDashboardHomeGet$Response$Data
    _$EmployeeStoreDashboardHomeGet$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreDashboardHomeGet$Response$Data(
          todaysIn: (json['todays_in'] as num?)?.toDouble(),
          todaysOut: (json['todays_out'] as num?)?.toDouble(),
          liveStock: (json['live_stock'] as num?)?.toDouble(),
          thisMonth: (json['this_month'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$EmployeeStoreDashboardHomeGet$Response$DataToJson(
        EmployeeStoreDashboardHomeGet$Response$Data instance) =>
    <String, dynamic>{
      'todays_in': instance.todaysIn,
      'todays_out': instance.todaysOut,
      'live_stock': instance.liveStock,
      'this_month': instance.thisMonth,
    };

EmployeeStoreOrdersGet$Response$Data$Item
    _$EmployeeStoreOrdersGet$Response$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreOrdersGet$Response$Data$Item(
          id: json['_id'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          date: json['date'] as String?,
          status: json['status'] as String?,
          store: json['store'] as String?,
          forecast: json['forecast'] as String?,
          complaint: json['complaint'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreOrdersGet$Response$Data$ItemToJson(
        EmployeeStoreOrdersGet$Response$Data$Item instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'status': instance.status,
      'store': instance.store,
      'forecast': instance.forecast,
      'complaint': instance.complaint,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreOrdersGet$Response$Meta
    _$EmployeeStoreOrdersGet$Response$MetaFromJson(Map<String, dynamic> json) =>
        EmployeeStoreOrdersGet$Response$Meta(
          pages: (json['pages'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          size: (json['size'] as num).toDouble(),
        );

Map<String, dynamic> _$EmployeeStoreOrdersGet$Response$MetaToJson(
        EmployeeStoreOrdersGet$Response$Meta instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
    };

EmployeeStoreReturnOrderGet$Response$Data$Item
    _$EmployeeStoreReturnOrderGet$Response$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreReturnOrderGet$Response$Data$Item(
          id: json['_id'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          date: json['date'] as String?,
          status: json['status'] as String?,
          store: json['store'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreReturnOrderGet$Response$Data$ItemToJson(
        EmployeeStoreReturnOrderGet$Response$Data$Item instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'status': instance.status,
      'store': instance.store,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreReturnOrderGet$Response$Meta
    _$EmployeeStoreReturnOrderGet$Response$MetaFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreReturnOrderGet$Response$Meta(
          pages: (json['pages'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          size: (json['size'] as num).toDouble(),
        );

Map<String, dynamic> _$EmployeeStoreReturnOrderGet$Response$MetaToJson(
        EmployeeStoreReturnOrderGet$Response$Meta instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
    };

EmployeeStoreForecastGet$Response$Data$Item
    _$EmployeeStoreForecastGet$Response$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreForecastGet$Response$Data$Item(
          id: json['_id'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          date: json['date'] as String?,
          store: json['store'] as String?,
          status: json['status'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreForecastGet$Response$Data$ItemToJson(
        EmployeeStoreForecastGet$Response$Data$Item instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'store': instance.store,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreForecastGet$Response$Meta
    _$EmployeeStoreForecastGet$Response$MetaFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreForecastGet$Response$Meta(
          pages: (json['pages'] as num).toDouble(),
          total: (json['total'] as num).toDouble(),
          page: (json['page'] as num).toDouble(),
          size: (json['size'] as num).toDouble(),
        );

Map<String, dynamic> _$EmployeeStoreForecastGet$Response$MetaToJson(
        EmployeeStoreForecastGet$Response$Meta instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
    };

EmployeeStoreForecastPost$Response$Data
    _$EmployeeStoreForecastPost$Response$DataFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreForecastPost$Response$Data(
          id: json['_id'] as String?,
          watercans: (json['watercans'] as num?)?.toDouble(),
          date: json['date'] as String?,
          store: json['store'] as String?,
          status: json['status'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic> _$EmployeeStoreForecastPost$Response$DataToJson(
        EmployeeStoreForecastPost$Response$Data instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'store': instance.store,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreAuthLoginPost$Response$Data$Store
    _$EmployeeStoreAuthLoginPost$Response$Data$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreAuthLoginPost$Response$Data$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate: EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate
              .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic> _$EmployeeStoreAuthLoginPost$Response$Data$StoreToJson(
        EmployeeStoreAuthLoginPost$Response$Data$Store instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'address': instance.address,
      'coordinate': instance.coordinate.toJson(),
      'code': instance.code,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreAuthMeGet$Response$Data$Store
    _$EmployeeStoreAuthMeGet$Response$Data$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreAuthMeGet$Response$Data$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate.fromJson(
                  json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic> _$EmployeeStoreAuthMeGet$Response$Data$StoreToJson(
        EmployeeStoreAuthMeGet$Response$Data$Store instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'address': instance.address,
      'coordinate': instance.coordinate.toJson(),
      'code': instance.code,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$OrderFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          status: json['status'] as String,
          store: EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          forecast:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast
                  .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$OrderToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'status': instance.status,
          'store': instance.store.toJson(),
          'forecast': instance.forecast.toJson(),
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$EmployeeFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee(
          id: json['_id'] as String?,
          $id: json['id'] as String?,
          name: json['name'] as String?,
          token: json['token'] as String?,
          password: json['password'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String?,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$EmployeeToJson(
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'token': instance.token,
      'password': instance.password,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'store': instance.store?.toJson(),
      'status': instance.status,
    };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$WatercanFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          qrUrl: json['qr_url'] as String?,
          status: json['status'] as String?,
          plant: json['plant'] as String?,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$WatercanToJson(
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Watercan instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'qr_url': instance.qrUrl,
      'status': instance.status,
      'plant': instance.plant,
    };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$StoreToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$ForecastToJson(
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'store': instance.store.toJson(),
      'status': instance.status,
      'store_admin_approval': instance.storeAdminApproval,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$OrderFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          status: json['status'] as String,
          store: EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          forecast: EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast
              .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$OrderToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Order instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'status': instance.status,
          'store': instance.store.toJson(),
          'forecast': instance.forecast.toJson(),
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Employee
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$EmployeeFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Employee(
          id: json['_id'] as String?,
          $id: json['id'] as String?,
          name: json['name'] as String?,
          token: json['token'] as String?,
          password: json['password'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$EmployeeToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Employee instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'token': instance.token,
          'password': instance.password,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'store': instance.store?.toJson(),
          'status': instance.status,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$WatercanFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          qrUrl: json['qr_url'] as String?,
          status: json['status'] as String?,
          plant: json['plant'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$WatercanToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Watercan instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'qr_url': instance.qrUrl,
          'status': instance.status,
          'plant': instance.plant,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Store
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$StoreToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Store instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store: EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$ForecastToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$OrderFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          status: json['status'] as String,
          store:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store.fromJson(
                  json['store'] as Map<String, dynamic>),
          forecast: EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast
              .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersPut$Response$Data$OrderToJson(
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'status': instance.status,
      'store': instance.store.toJson(),
      'forecast': instance.forecast.toJson(),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersPut$Response$Data$Employee
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$EmployeeFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Employee(
          id: json['_id'] as String?,
          $id: json['id'] as String?,
          name: json['name'] as String?,
          token: json['token'] as String?,
          password: json['password'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$EmployeeToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Employee instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'token': instance.token,
          'password': instance.password,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'store': instance.store?.toJson(),
          'status': instance.status,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$WatercanFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          qrUrl: json['qr_url'] as String?,
          status: json['status'] as String?,
          plant: json['plant'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$WatercanToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Watercan instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'qr_url': instance.qrUrl,
          'status': instance.status,
          'plant': instance.plant,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Store
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic> _$EmployeeStoreEmployeeOrdersPut$Response$Data$StoreToJson(
        EmployeeStoreEmployeeOrdersPut$Response$Data$Store instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'address': instance.address,
      'coordinate': instance.coordinate.toJson(),
      'code': instance.code,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store: EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$ForecastToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$OrderFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          status: json['status'] as String,
          store: EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          forecast:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast
                  .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$OrderToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'status': instance.status,
          'store': instance.store.toJson(),
          'forecast': instance.forecast.toJson(),
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$EmployeeFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee(
          id: json['_id'] as String?,
          $id: json['id'] as String?,
          name: json['name'] as String?,
          token: json['token'] as String?,
          password: json['password'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String?,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersDelete$Response$Data$EmployeeToJson(
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'token': instance.token,
      'password': instance.password,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'store': instance.store?.toJson(),
      'status': instance.status,
    };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$WatercanFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          qrUrl: json['qr_url'] as String?,
          status: json['status'] as String?,
          plant: json['plant'] as String?,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersDelete$Response$Data$WatercanToJson(
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Watercan instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'qr_url': instance.qrUrl,
      'status': instance.status,
      'plant': instance.plant,
    };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Store
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$StoreToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Store instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store: EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersDelete$Response$Data$ForecastToJson(
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'store': instance.store.toJson(),
      'status': instance.status,
      'store_admin_approval': instance.storeAdminApproval,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$StoreToJson(
            EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$ItemFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item(
          id: json['_id'] as String?,
          type: json['type'] as String?,
          order: json['order'] as String?,
          employee: json['employee'] as String?,
          watercan: json['watercan'] == null
              ? null
              : EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan
                  .fromJson(json['watercan'] as Map<String, dynamic>),
          store: json['store'] as String?,
          forecast: json['forecast'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$ItemToJson(
            EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'type': instance.type,
          'order': instance.order,
          'employee': instance.employee,
          'watercan': instance.watercan?.toJson(),
          'store': instance.store,
          'forecast': instance.forecast,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item
    _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$ItemFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item(
          id: json['_id'] as String?,
          type: json['type'] as String?,
          order: json['order'] as String?,
          employee: json['employee'] as String?,
          watercan: json['watercan'] == null
              ? null
              : EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan
                  .fromJson(json['watercan'] as Map<String, dynamic>),
          store: json['store'] as String?,
          forecast: json['forecast'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$ItemToJson(
            EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'type': instance.type,
          'order': instance.order,
          'employee': instance.employee,
          'watercan': instance.watercan?.toJson(),
          'store': instance.store,
          'forecast': instance.forecast,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$OrderFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          status: json['status'] as String,
          store: EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          forecast:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast
                  .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$OrderToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'status': instance.status,
          'store': instance.store.toJson(),
          'forecast': instance.forecast.toJson(),
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$EmployeeFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee(
          id: json['_id'] as String?,
          $id: json['id'] as String?,
          name: json['name'] as String?,
          token: json['token'] as String?,
          password: json['password'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String?,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$EmployeeToJson(
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'token': instance.token,
      'password': instance.password,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'store': instance.store?.toJson(),
      'status': instance.status,
    };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$WatercanFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          qrUrl: json['qr_url'] as String?,
          status: json['status'] as String?,
          plant: json['plant'] as String?,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$WatercanToJson(
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Watercan instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'qr_url': instance.qrUrl,
      'status': instance.status,
      'plant': instance.plant,
    };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$StoreToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store: EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$ForecastToJson(
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'store': instance.store.toJson(),
      'status': instance.status,
      'store_admin_approval': instance.storeAdminApproval,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$OrderFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          status: json['status'] as String,
          store:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          forecast:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast
                  .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$OrderToJson(
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'status': instance.status,
      'store': instance.store.toJson(),
      'forecast': instance.forecast.toJson(),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$EmployeeFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee(
          id: json['_id'] as String?,
          $id: json['id'] as String?,
          name: json['name'] as String?,
          token: json['token'] as String?,
          password: json['password'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$EmployeeToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'token': instance.token,
          'password': instance.password,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'store': instance.store?.toJson(),
          'status': instance.status,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$WatercanFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          qrUrl: json['qr_url'] as String?,
          status: json['status'] as String?,
          plant: json['plant'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$WatercanToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Watercan
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'qr_url': instance.qrUrl,
          'status': instance.status,
          'plant': instance.plant,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$StoreToJson(
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'address': instance.address,
      'coordinate': instance.coordinate.toJson(),
      'code': instance.code,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$ForecastToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$OrderFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          status: json['status'] as String,
          store: EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store
              .fromJson(json['store'] as Map<String, dynamic>),
          forecast:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast
                  .fromJson(json['forecast'] as Map<String, dynamic>),
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$OrderToJson(
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'watercans': instance.watercans,
      'date': instance.date,
      'status': instance.status,
      'store': instance.store.toJson(),
      'forecast': instance.forecast.toJson(),
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$EmployeeFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee(
          id: json['_id'] as String?,
          $id: json['id'] as String?,
          name: json['name'] as String?,
          token: json['token'] as String?,
          password: json['password'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          store: json['store'] == null
              ? null
              : EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$EmployeeToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'token': instance.token,
          'password': instance.password,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'store': instance.store?.toJson(),
          'status': instance.status,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$WatercanFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          qrUrl: json['qr_url'] as String?,
          status: json['status'] as String?,
          plant: json['plant'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$WatercanToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Watercan
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'qr_url': instance.qrUrl,
          'status': instance.status,
          'plant': instance.plant,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$StoreToJson(
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'address': instance.address,
      'coordinate': instance.coordinate.toJson(),
      'code': instance.code,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$ForecastToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate
    _$EmployeeStoreAuthLoginPost$Response$Data$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String,
    dynamic> _$EmployeeStoreAuthLoginPost$Response$Data$Store$CoordinateToJson(
        EmployeeStoreAuthLoginPost$Response$Data$Store$Coordinate instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };

EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate
    _$EmployeeStoreAuthMeGet$Response$Data$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreAuthMeGet$Response$Data$Store$CoordinateToJson(
            EmployeeStoreAuthMeGet$Response$Data$Store$Coordinate instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$StoreToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$ForecastToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$StoreToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city: EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$City
              .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$StoreToJson(
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'address': instance.address,
      'coordinate': instance.coordinate.toJson(),
      'code': instance.code,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'sector': instance.sector.toJson(),
      'city': instance.city.toJson(),
    };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$ForecastToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$StoreToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city: EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$City
              .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$StoreToJson(
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'id': instance.$id,
      'name': instance.name,
      'address': instance.address,
      'coordinate': instance.coordinate.toJson(),
      'code': instance.code,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'sector': instance.sector.toJson(),
      'city': instance.city.toJson(),
    };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$ForecastToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$StoreToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city: EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$City
              .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city: EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$City
              .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$StoreToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$ForecastToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$StoreToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$WatercanFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          qrUrl: json['qr_url'] as String?,
          status: json['status'] as String?,
          plant: json['plant'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$WatercanToJson(
            EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data$EmployeeOrder$Item$Watercan
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'qr_url': instance.qrUrl,
          'status': instance.status,
          'plant': instance.plant,
        };

EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan
    _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$WatercanFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan(
          id: json['_id'] as String?,
          $id: (json['id'] as num?)?.toDouble(),
          qrUrl: json['qr_url'] as String?,
          status: json['status'] as String?,
          plant: json['plant'] as String?,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$WatercanToJson(
            EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data$EmployeeOrder$Item$Watercan
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'qr_url': instance.qrUrl,
          'status': instance.status,
          'plant': instance.plant,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$StoreToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$ForecastToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$StoreToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$StoreToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$ForecastToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$StoreToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$StoreToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$ForecastFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast(
          id: json['_id'] as String,
          watercans: (json['watercans'] as num).toDouble(),
          date: json['date'] as String,
          store:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store
                  .fromJson(json['store'] as Map<String, dynamic>),
          status: json['status'] as String,
          storeAdminApproval: json['store_admin_approval'] as bool,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$ForecastToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'watercans': instance.watercans,
          'date': instance.date,
          'store': instance.store.toJson(),
          'status': instance.status,
          'store_admin_approval': instance.storeAdminApproval,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$StoreToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$City
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$CityToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Employee$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$City
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$CityToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Employee$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$City
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$CityToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Employee$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$City
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$CityToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Employee$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$City
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$CityToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Employee$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$City
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$CityToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Employee$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$City
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$CityToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$StoreFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store(
          id: json['_id'] as String,
          $id: (json['id'] as num?)?.toDouble(),
          name: json['name'] as String,
          address: json['address'] as String,
          coordinate:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate
                  .fromJson(json['coordinate'] as Map<String, dynamic>),
          code: json['code'] as String?,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
          sector:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector
                  .fromJson(json['sector'] as Map<String, dynamic>),
          city:
              EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$City
                  .fromJson(json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$StoreToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'id': instance.$id,
          'name': instance.name,
          'address': instance.address,
          'coordinate': instance.coordinate.toJson(),
          'code': instance.code,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
          'sector': instance.sector.toJson(),
          'city': instance.city.toJson(),
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Employee$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersGet$Response$Data$Item$Order$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersPost$Response$Data$Order$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersPut$Response$Data$Order$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersDelete$Response$Data$Order$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersOutPost$Response$Data$Order$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersConfirmPost$Response$Data$Order$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$CoordinateFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate(
          lat: (json['lat'] as num).toDouble(),
          long: (json['long'] as num).toDouble(),
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$CoordinateToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Coordinate
                instance) =>
        <String, dynamic>{
          'lat': instance.lat,
          'long': instance.long,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$SectorFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$SectorToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$Sector
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };

EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$City
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$CityFromJson(
            Map<String, dynamic> json) =>
        EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$City(
          id: json['_id'] as String,
          name: json['name'] as String,
          createdAt: json['createdAt'] as String,
          updatedAt: json['updatedAt'] as String,
        );

Map<String, dynamic>
    _$EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$CityToJson(
            EmployeeStoreEmployeeOrdersConfirmPut$Response$Data$Order$Forecast$Store$City
                instance) =>
        <String, dynamic>{
          '_id': instance.id,
          'name': instance.name,
          'createdAt': instance.createdAt,
          'updatedAt': instance.updatedAt,
        };
