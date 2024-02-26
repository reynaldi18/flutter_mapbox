// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormStatus _$FormStatusFromJson(Map<String, dynamic> json) => FormStatus(
      status: json['status'] as String?,
      message: json['message'] as String?,
      revisionList: json['revision_list'] as List<dynamic>?,
    );

Map<String, dynamic> _$FormStatusToJson(FormStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'revision_list': instance.revisionList,
    };
