
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';

part 'job.g.dart';


@freezed
sealed class Job with _$Job{
  factory Job({
    String? jobTitle,
    String? startTime,
    bool? focusedState,
}) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

}