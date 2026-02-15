// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dimensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DimensionsDto _$DimensionsDtoFromJson(Map<String, dynamic> json) =>
    DimensionsDto(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      depth: (json['depth'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DimensionsDtoToJson(DimensionsDto instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
    };
