// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      jobTitle: json['jobTitle'] as String?,
      startTime: json['startTime'] as String?,
      focusedState: json['focusedState'] as bool?,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'jobTitle': instance.jobTitle,
      'startTime': instance.startTime,
      'focusedState': instance.focusedState,
    };
