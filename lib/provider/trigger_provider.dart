import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starrywave_practice/data/firebase_trigger_dataSource.dart';
import 'package:starrywave_practice/domain/repo/trigger_repository.dart';
import 'package:starrywave_practice/domain/use_cases/trigger/add_trigger.dart';
import 'package:starrywave_practice/domain/use_cases/trigger/get_trigger.dart';
import 'package:starrywave_practice/model/trigger.dart';

//DataSourceProvider
final firebaseTriggerDataSourceProvider = Provider((ref){
  return FirebaseTriggerDatasource(FirebaseFirestore.instance);
});

//RepositoryProvider
final triggerRepositoryProvider = Provider((ref){
  return TriggerRepository(ref.watch(firebaseTriggerDataSourceProvider));
});

//UsecaseProvider
final addTriggerProvider = Provider((ref){
  return AddTrigger(ref.watch(triggerRepositoryProvider));
});

//UsecaseProvider
final getTriggerProvider = Provider((ref){
  return GetTrigger(ref.watch(triggerRepositoryProvider));
});

//데이터를 저장하는 Provider
final addTriggerFutureProvider = FutureProvider.family<void, Trigger>((ref, trigger)async{
  await ref.watch(addTriggerProvider).addTrigger(trigger);
});


//데이터를 불러오는 Provider
final getTriggerStreamProvider = StreamProvider.family<List<Trigger>, String>((ref, docId) {
  // 특정 docId에 맞는 Trigger 데이터를 가져오는 로직
  return ref.watch(getTriggerProvider).getTrigger(docId);
});
