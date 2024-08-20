import 'package:starrywave_practice/domain/repo/trigger_repository.dart';
import 'package:starrywave_practice/model/trigger.dart';

class AddTrigger{
  final TriggerRepository repository;

  AddTrigger(this.repository);

  //데이터 저장
  Future<void>addTrigger(Trigger trigger)async{
    return repository.addTrigger(trigger);
  }


}