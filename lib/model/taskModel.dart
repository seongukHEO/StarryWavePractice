import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'taskModel.freezed.dart';
part 'taskModel.g.dart';
@freezed
sealed class TaskModel with _$TaskModel{
  factory TaskModel({
  String? jobId,
  int? fomodoroIdx,
  int? totalTime

}) = _TaskModel;

  factory TaskModel.fromDocument(DocumentSnapshot doc){
    final data = doc.data() as Map<String, dynamic>;
    return TaskModel(
      jobId: data['jobId'] ?? "",
      fomodoroIdx: data['fomodoroIdx'] ?? 0,
      totalTime: data['totalTime'] ?? 0
    );
  }

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);
}