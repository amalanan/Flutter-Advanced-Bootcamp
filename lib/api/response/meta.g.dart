// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaDto _$MetaDtoFromJson(Map<String, dynamic> json) => MetaDto(
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  barcode: json['barcode'] as String?,
  qrCode: json['qrCode'] as String?,
);

Map<String, dynamic> _$MetaDtoToJson(MetaDto instance) => <String, dynamic>{
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'barcode': instance.barcode,
  'qrCode': instance.qrCode,
};
