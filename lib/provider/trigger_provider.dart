import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starrywave_practice/data/firebase_trigger_dataSource.dart';
import 'package:starrywave_practice/domain/repo/trigger_repository.dart';
import 'package:starrywave_practice/domain/use_cases/trigger/add_trigger.dart';
import 'package:starrywave_practice/domain/use_cases/trigger/get_trigger.dart';
import 'package:starrywave_practice/model/trigger.dart';

final firebaseTriggerDataSourceProvider = Provider((ref){
  return FirebaseTriggerDatasource(FirebaseFirestore.instance);
});

final triggerRepositoryProvider = Provider((ref){
  return TriggerRepository(ref.watch(firebaseTriggerDataSourceProvider));
});

final addTriggerProvider = Provider((ref){
  return AddTrigger(ref.watch(triggerRepositoryProvider));
});

final getTriggerProvider = Provider((ref){
  return GetTrigger(ref.watch(triggerRepositoryProvider));
});

final addTriggerFutureProvider = FutureProvider.family<void, Trigger>((ref, trigger)async{
  await ref.watch(addTriggerProvider).addTrigger(trigger);
});

final getTriggerStreamProvider = StreamProvider.family<List<Trigger>, String>((ref, docId) {
  // 특정 docId에 맞는 Trigger 데이터를 가져오는 로직
  return ref.watch(getTriggerProvider).getTrigger(docId);
});
