import 'package:starrywave_practice/data/firebase_job_dataSource.dart';
import 'package:starrywave_practice/model/job.dart';

class JobRepository {
  final FirebaseJobDatasource datasource;

  JobRepository(this.datasource);

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

  //데이터 변경
  Future<void> updateJob(String jobId, Job job)async{
    final jobData = {
      'jobTitle': job.jobTitle,
      'startTime' : job.startTime,
      'focusedState' : job.focusedState,
    };
    await datasource.updateJob(jobId, jobData);
  }
}