// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      jobId: json['jobId'] as String?,
      fomodoroIdx: (json['fomodoroIdx'] as num?)?.toInt(),
      totalTime: (json['totalTime'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'fomodoroIdx': instance.fomodoroIdx,
      'totalTime': instance.totalTime,
    };
