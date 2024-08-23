import 'package:starrywave_practice/domain/repo/task_repository.dart';
import 'package:starrywave_practice/model/taskModel.dart';

class AddTask{
  final TaskRepository repository;

  AddTask(this.repository);

  //데이터 저장
  Future<void>addTask(TaskModel task)async{
    return repository.addTask(task);
  }



}