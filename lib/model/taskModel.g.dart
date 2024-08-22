// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taskModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      jobId: json['jobId'] as String?,
      fomodoroIdx: (json['fomodoroIdx'] as num?)?.toInt(),
      totalTime: (json['totalTime'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'fomodoroIdx': instance.fomodoroIdx,
      'totalTime': instance.totalTime,
    };
