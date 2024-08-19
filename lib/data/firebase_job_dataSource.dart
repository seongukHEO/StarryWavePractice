import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:starrywave_practice/model/job.dart';

class FirebaseJobDatasource {
  final FirebaseFirestore firestore;

  FirebaseJobDatasource(this.firestore);

  //데이터를 저장하는 함수
  Future<void> addJob(Job job)async{
    await firestore.collection("job").add(job.toJson());
  }


  //데이터를 받아오는 함수
  // Future<List<Job>> getJobs()async{
  //   final snapshot = await firestore.collection('job').get();
  //   return snapshot.docs.map((doc) => Job.fromJson(doc.data())).toList();
  // }

  Stream<List<Job>> getJobs(){
    return firestore.collection("job").snapshots().map((snapshot){
      return snapshot.docs.map((doc) => Job.fromDocument(doc)).toList();
    });
  }

}