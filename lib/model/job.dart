
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';

part 'job.g.dart';


@freezed
sealed class Job with _$Job{
  factory Job({
    int? jobIdx,
    String? jobTitle,
    String? startTime,
    bool? focusedState,
    String? jobTime,
    int? fomodoroCount,
    String? totalFocusTime,
}) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

}