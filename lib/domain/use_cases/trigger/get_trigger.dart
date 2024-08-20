import 'package:starrywave_practice/domain/repo/trigger_repository.dart';
import 'package:starrywave_practice/model/trigger.dart';

class GetTrigger{
  final TriggerRepository repository;
  GetTrigger(this.repository);

  Stream<List<Trigger>> getTrigger(String jobId){
    return repository.getTrigger(jobId);
  }
}