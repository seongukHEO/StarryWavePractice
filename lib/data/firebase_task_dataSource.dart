import 'dart:js_interop';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:starrywave_practice/model/taskModel.dart';

class FirebaseTaskDatasource{
  final FirebaseFirestore firestore;

  FirebaseTaskDatasource(this.firestore);

  //데이터 저장
  Future<void> addTask(TaskModel task)async{
    await firestore.collection('task').add(task.toJson());
  }

  //jobId에 맞는 데이터 받아오기
  Stream<List<TaskModel>> getTask(String jobId){
    return firestore.collection('task')
        .where('jobId', isEqualTo: jobId)
        .snapshots()
        .map((snapshot)
        => snapshot.docs.map((doc) => TaskModel.fromDocument(doc)).toList());

  }


}