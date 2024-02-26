import 'package:json_annotation/json_annotation.dart';

import 'geo_json.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  @JsonKey(name: 'geojson')
  GeoJson? geojson;
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'user')
  String? user;
  @JsonKey(name: 'geo_project')
  String? geoProject;
  @JsonKey(name: 'folder')
  String? folder;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'error')
  String? error;

  Location({
    this.geojson,
    this.id,
    this.user,
    this.geoProject,
    this.folder,
    this.status,
    this.error,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
