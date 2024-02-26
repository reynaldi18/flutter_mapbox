// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      geojson: json['geojson'] == null
          ? null
          : GeoJson.fromJson(json['geojson'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      user: json['user'] as String?,
      geoProject: json['geo_project'] as String?,
      folder: json['folder'] as String?,
      status: json['status'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'geojson': instance.geojson,
      '_id': instance.id,
      'user': instance.user,
      'geo_project': instance.geoProject,
      'folder': instance.folder,
      'status': instance.status,
      'error': instance.error,
    };
