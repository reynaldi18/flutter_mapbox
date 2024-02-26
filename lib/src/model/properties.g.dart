// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Properties _$PropertiesFromJson(Map<String, dynamic> json) => Properties(
      iconImage: json['icon_image'] as String?,
      textField: json['text_field'] as String?,
      fillColor: json['fill_color'] as String?,
      circleRadius: json['circle_radius'] as int?,
      circleStrokeWidth: json['circle_stroke_width'] as int?,
      circleStrokeColor: json['circle_stroke_color'] as String?,
      name: json['Nama'] as String?,
      status: json['Status'] as String?,
      number: json['Angka'] as String?,
    );

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      'icon_image': instance.iconImage,
      'text_field': instance.textField,
      'fill_color': instance.fillColor,
      'circle_radius': instance.circleRadius,
      'circle_stroke_width': instance.circleStrokeWidth,
      'circle_stroke_color': instance.circleStrokeColor,
      'Nama': instance.name,
      'Status': instance.status,
      'Angka': instance.number,
    };
