import 'package:starrywave_practice/data/firebase_trigger_dataSource.dart';
import 'package:starrywave_practice/model/trigger.dart';

class TriggerRepository {
  final FirebaseTriggerDatasource datasource;

  TriggerRepository(this.datasource);

  //데이터 저장하기
  Future<void>addTrigger(Trigger trigger)async{
    final triggerModel = Trigger(
      jobId: trigger.jobId,
      triggerTitle: trigger.triggerTitle,
      triggerClear: trigger.triggerClear
    );
    await datasource.addTrigger(trigger);
  }

  //데이터 가져오기
  Stream<List<Trigger>> getTrigger(String jobId){
    return datasource.getTrigger(jobId);
  }

}