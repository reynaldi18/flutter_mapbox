import 'package:json_annotation/json_annotation.dart';

import 'form_progress.dart';
import 'form_status.dart';
import 'geometry.dart';
import 'properties.dart';
import 'ref_feature.dart';

part 'feature.g.dart';

@JsonSerializable()
class Feature {
  @JsonKey(name: 'geometry')
  Geometry? geometry;
  @JsonKey(name: 'formStatus')
  FormStatus? formStatus;
  @JsonKey(name: 'formProgress')
  FormProgress? formProgress;
  @JsonKey(name: 'ref_feature')
  RefFeature? refFeature;
  @JsonKey(name: 'data_pembanding_list')
  List<dynamic>? dataPembandingList;
  @JsonKey(name: 'user')
  String? user;
  @JsonKey(name: 'key')
  String? key;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'counting_custom_array')
  List<dynamic>? countingCustomArray;
  @JsonKey(name: 'child_array')
  List<dynamic>? childArray;
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'properties')
  Properties? properties;

  Feature({
    this.geometry,
    this.formStatus,
    this.formProgress,
    this.refFeature,
    this.dataPembandingList,
    this.user,
    this.key,
    this.type,
    this.countingCustomArray,
    this.childArray,
    this.id,
    this.properties,
  });

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureToJson(this);
}
