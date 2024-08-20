import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:starrywave_practice/model/job.dart';

class FirebaseJobDatasource {
  final FirebaseFirestore firestore;

  FirebaseJobDatasource(this.firestore);

  //데이터를 저장하는 함수
  // Future<void> addJob(Job job)async{
  //   await firestore.collection("job").add(job.toJson());
  // }

  Future<void>addJob(Job job)async{
    final docRef = firestore.collection('job').doc();
    final jobInfo = job.copyWith(id: docRef.id);

    await docRef.set({
      'id': jobInfo.id,
      'jobTitle' : jobInfo.jobTitle,
      'startTime' : jobInfo.startTime,
      'focusedState' : jobInfo.focusedState
    });
  }
  Stream<List<Job>> getJobs(){
    return firestore.collection("job").snapshots().map((snapshot){
      return snapshot.docs.map((doc) => Job.fromDocument(doc)).toList();
    });
  }

  //오늘 날짜에 맞는 데이터 받아오기
  Stream<List<Job>> getTasksForToday(String todayDate) {
    return firestore
        .collection('job')
        .where('startTime', isEqualTo: todayDate)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => Job.fromDocument(doc)).toList());
  }

}