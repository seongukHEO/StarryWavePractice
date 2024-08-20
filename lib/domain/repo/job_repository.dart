import 'package:starrywave_practice/data/firebase_job_dataSource.dart';
import 'package:starrywave_practice/model/job.dart';

class JobRepository {
  final FirebaseJobDatasource datasource;

  JobRepository(this.datasource);

  //데이터 저장
  // Future<void> addJob(Job job)async{
  //   final jobInfo = Job(
  //     jobTitle: job.jobTitle,
  //     startTime: job.startTime,
  //     focusedState: job.focusedState,
  //   );
  //   await datasource.addJob(jobInfo);
  // }

  Future<void>addJob(Job job)async{
    return datasource.addJob(job);
  }

  //데이터 받아오기
  Stream<List<Job>> getJob(){
    return datasource.getJobs();
  }

  //오늘 날짜에 맞는 데이터 받아오기
  Stream<List<Job>> getJobForDate(String date){
    return datasource.getTasksForToday(date);
  }
}