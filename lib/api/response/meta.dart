
import 'package:json_annotation/json_annotation.dart';

import '../../domain/model/meta.dart';
part 'meta.g.dart';

@JsonSerializable()
class MetaDto {
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @JsonKey(name: "updatedAt")
  final String? updatedAt;
  @JsonKey(name: "barcode")
  final String? barcode;
  @JsonKey(name: "qrCode")
  final String? qrCode;

  MetaDto ({
    this.createdAt,
    this.updatedAt,
    this.barcode,
    this.qrCode,
  });

  factory MetaDto.fromJson(Map<String, dynamic> json) {
    return _$MetaDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MetaDtoToJson(this);
  }
  Meta toMeta(){
    return Meta(
      createdAt: createdAt,
      updatedAt: updatedAt,
      barcode: barcode,
      qrCode: qrCode,
    );
  }

}
