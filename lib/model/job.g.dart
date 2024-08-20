// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      id: json['id'] as String?,
      jobTitle: json['jobTitle'] as String?,
      startTime: json['startTime'] as String?,
      focusedState: json['focusedState'] as bool?,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'id': instance.id,
      'jobTitle': instance.jobTitle,
      'startTime': instance.startTime,
      'focusedState': instance.focusedState,
    };
