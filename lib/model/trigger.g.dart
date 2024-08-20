// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TriggerImpl _$$TriggerImplFromJson(Map<String, dynamic> json) =>
    _$TriggerImpl(
      jobId: json['jobId'] as String?,
      triggerTitle: json['triggerTitle'] as String?,
      triggerClear: json['triggerClear'] as bool?,
    );

Map<String, dynamic> _$$TriggerImplToJson(_$TriggerImpl instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'triggerTitle': instance.triggerTitle,
      'triggerClear': instance.triggerClear,
    };
