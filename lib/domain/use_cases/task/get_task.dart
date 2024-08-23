import 'package:starrywave_practice/domain/repo/task_repository.dart';
import 'package:starrywave_practice/model/taskModel.dart';

class GetTask{
  final TaskRepository repository;

  GetTask(this.repository);

  Stream<List<TaskModel>>getTask(String jobId){
    return repository.getTask(jobId);
  }


}