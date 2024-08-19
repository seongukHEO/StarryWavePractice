
import 'package:cloud_firestore/cloud_firestore.dart';
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

  factory Job.fromDocument(DocumentSnapshot doc){
    final data = doc.data() as Map<String, dynamic>;
    return Job(
      jobTitle: data['jobTitle'] ?? "",
      startTime: data['startTime'] ?? "",
      focusedState: data["focusedState"] ?? true
    );
  }

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

}