import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';
@freezed
sealed class Task with _$Task{
  factory Task({
  String? jobId,
  int? fomodoroIdx,
  int? totalTime

}) = _Task;

  factory Task.fromDocument(DocumentSnapshot doc){
    final data = doc.data() as Map<String, dynamic>;
    return Task(
      jobId: data['jobId'] ?? "",
      fomodoroIdx: data['fomodoroIdx'] ?? 0,
      totalTime: data['totalTime'] ?? 0
    );
  }

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}