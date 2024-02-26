import 'package:json_annotation/json_annotation.dart';

import 'feature.dart';

part 'geo_json.g.dart';

@JsonSerializable()
class GeoJson {
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'features')
  List<Feature>? features;

  GeoJson({
    this.type,
    this.features,
  });

  factory GeoJson.fromJson(Map<String, dynamic> json) =>
      _$GeoJsonFromJson(json);

  Map<String, dynamic> toJson() => _$GeoJsonToJson(this);
}
