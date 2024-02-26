import 'package:json_annotation/json_annotation.dart';

part 'form_status.g.dart';

@JsonSerializable()
class FormStatus {
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'revision_list')
  List<dynamic>? revisionList;

  FormStatus({
    this.status,
    this.message,
    this.revisionList,
  });

  factory FormStatus.fromJson(Map<String, dynamic> json) =>
      _$FormStatusFromJson(json);

  Map<String, dynamic> toJson() => _$FormStatusToJson(this);
}
