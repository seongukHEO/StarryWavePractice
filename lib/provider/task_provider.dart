import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starrywave_practice/data/firebase_task_dataSource.dart';
import 'package:starrywave_practice/domain/repo/task_repository.dart';
import 'package:starrywave_practice/model/taskModel.dart';

final firebaseTaskDataSourceProvider = Provider((ref){
  return FirebaseTaskDatasource(FirebaseFirestore.instance);
});

final TaskRepositoryProvider = Provider((ref){
  return TaskRepository(ref.watch(firebaseTaskDataSourceProvider));
});

final addTaskProvider = Provider((ref){
  return ref.watch(TaskRepositoryProvider);
});

final getTaskProvider = Provider((ref){
  return ref.watch(TaskRepositoryProvider);
});

//데이터 저장
final addTaskFutureProvider = FutureProvider.family<void, TaskModel>((ref, task)async{
  await ref.watch(addTaskProvider).addTask(task);
});

//데이터 받아오기
final getTaskStreamProvier = StreamProvider.family<List<TaskModel>, String>((ref, jobId){
  return ref.watch(getTaskProvider).getTask(jobId);
});