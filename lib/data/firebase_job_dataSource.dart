import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:starrywave_practice/model/job.dart';

class FirebaseJobDatasource {
  final FirebaseFirestore firestore;

  FirebaseJobDatasource(this.firestore);

  //데이터를 저장하는 함수
  Future<void> addJob(Job job)async{
    await firestore.collection("job").add(job.toJson());
  }

}