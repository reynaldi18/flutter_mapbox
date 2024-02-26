// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      formStatus: json['formStatus'] == null
          ? null
          : FormStatus.fromJson(json['formStatus'] as Map<String, dynamic>),
      formProgress: json['formProgress'] == null
          ? null
          : FormProgress.fromJson(json['formProgress'] as Map<String, dynamic>),
      refFeature: json['ref_feature'] == null
          ? null
          : RefFeature.fromJson(json['ref_feature'] as Map<String, dynamic>),
      dataPembandingList: json['data_pembanding_list'] as List<dynamic>?,
      user: json['user'] as String?,
      key: json['key'] as String?,
      type: json['type'] as String?,
      countingCustomArray: json['counting_custom_array'] as List<dynamic>?,
      childArray: json['child_array'] as List<dynamic>?,
      id: json['_id'] as String?,
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
      'geometry': instance.geometry,
      'formStatus': instance.formStatus,
      'formProgress': instance.formProgress,
      'ref_feature': instance.refFeature,
      'data_pembanding_list': instance.dataPembandingList,
      'user': instance.user,
      'key': instance.key,
      'type': instance.type,
      'counting_custom_array': instance.countingCustomArray,
      'child_array': instance.childArray,
      '_id': instance.id,
      'properties': instance.properties,
    };
