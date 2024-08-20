import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:starrywave_practice/model/trigger.dart';

class FirebaseTriggerDatasource {
  final FirebaseFirestore firestore;

  FirebaseTriggerDatasource(this.firestore);

  //데이터를 저장하는 함수
  Future<void>addTrigger(Trigger trigger)async{
    await firestore.collection('trigger').add(trigger.toJson());
  }


  //docId에 맞는 데이터를 가져오는 함수
  Stream<List<Trigger>>getTrigger(String docId){
    return firestore.collection('trigger')
        .where("jobId", isEqualTo: docId)
        .snapshots()
        .map((snapshot) =>
        snapshot.docs.map((doc) => Trigger.fromDocument(doc)).toList());
  }
}