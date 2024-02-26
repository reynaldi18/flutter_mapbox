import 'package:json_annotation/json_annotation.dart';

part 'form_progress.g.dart';

@JsonSerializable()
class FormProgress {
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;

  FormProgress({
    this.status,
    this.message,
  });

  factory FormProgress.fromJson(Map<String, dynamic> json) =>
      _$FormProgressFromJson(json);

  Map<String, dynamic> toJson() => _$FormProgressToJson(this);
}
