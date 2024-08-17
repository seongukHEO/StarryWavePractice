// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      jobIdx: (json['jobIdx'] as num?)?.toInt(),
      jobTitle: json['jobTitle'] as String?,
      startTime: json['startTime'] as String?,
      focusedState: json['focusedState'] as bool?,
      jobTime: json['jobTime'] as String?,
      fomodoroCount: (json['fomodoroCount'] as num?)?.toInt(),
      totalFocusTime: json['totalFocusTime'] as String?,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'jobIdx': instance.jobIdx,
      'jobTitle': instance.jobTitle,
      'startTime': instance.startTime,
      'focusedState': instance.focusedState,
      'jobTime': instance.jobTime,
      'fomodoroCount': instance.fomodoroCount,
      'totalFocusTime': instance.totalFocusTime,
    };
