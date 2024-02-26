// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoJson _$GeoJsonFromJson(Map<String, dynamic> json) => GeoJson(
      type: json['type'] as String?,
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeoJsonToJson(GeoJson instance) => <String, dynamic>{
      'type': instance.type,
      'features': instance.features,
    };
