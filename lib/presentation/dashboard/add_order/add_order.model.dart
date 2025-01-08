// To parse this JSON data, do
//
//     final qrMetaData = qrMetaDataFromJson(jsonString);

import 'dart:convert';

QrMetaData qrMetaDataFromJson(String str) =>
    QrMetaData.fromJson(json.decode(str));

String qrMetaDataToJson(QrMetaData data) => json.encode(data.toJson());

class QrMetaData {
  int qrMetaDataId;
  String id;

  QrMetaData({
    required this.qrMetaDataId,
    required this.id,
  });

  factory QrMetaData.fromJson(Map<String, dynamic> json) => QrMetaData(
        qrMetaDataId: json["id"],
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": qrMetaDataId,
        "_id": id,
      };
}
