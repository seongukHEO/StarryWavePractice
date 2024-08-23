
import 'package:starrywave_practice/data/firebase_task_dataSource.dart';
import 'package:starrywave_practice/model/taskModel.dart';

class TaskRepository {
  final FirebaseTaskDatasource firebaseTaskDatasource;

  TaskRepository(this.firebaseTaskDatasource);


  //데이터 추가하기
  Future<void> addTask(TaskModel task)async{
    final taskModel = TaskModel(
      jobId: task.jobId,
      fomodoroIdx: task.fomodoroIdx,
      totalTime: task.totalTime,
    );
    return firebaseTaskDatasource.addTask(taskModel);
  }

  //데이터 가져오기
  Stream<List<TaskModel>>getTask(String jobId){
    return firebaseTaskDatasource.getTask(jobId);
  }
}