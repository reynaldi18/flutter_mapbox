import 'package:json_annotation/json_annotation.dart';

part 'ref_feature.g.dart';

@JsonSerializable()
class RefFeature {
  @JsonKey(name: 'status')
  bool? status;

  RefFeature({
    this.status,
  });

  factory RefFeature.fromJson(Map<String, dynamic> json) =>
      _$RefFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$RefFeatureToJson(this);
}
