import 'package:json_annotation/json_annotation.dart';

part 'properties.g.dart';

@JsonSerializable()
class Properties {
  @JsonKey(name: 'icon_image')
  String? iconImage;
  @JsonKey(name: 'text_field')
  String? textField;
  @JsonKey(name: 'fill_color')
  String? fillColor;
  @JsonKey(name: 'circle_radius')
  int? circleRadius;
  @JsonKey(name: 'circle_stroke_width')
  int? circleStrokeWidth;
  @JsonKey(name: 'circle_stroke_color')
  String? circleStrokeColor;
  @JsonKey(name: 'Nama')
  String? name;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Angka')
  String? number;

  Properties({
    this.iconImage,
    this.textField,
    this.fillColor,
    this.circleRadius,
    this.circleStrokeWidth,
    this.circleStrokeColor,
    this.name,
    this.status,
    this.number,
  });

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$PropertiesToJson(this);
}
