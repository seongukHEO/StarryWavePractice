import 'package:starrywave_practice/data/firebase_job_dataSource.dart';
import 'package:starrywave_practice/model/job.dart';

class JobRepository {
  final FirebaseJobDatasource datasource;

  JobRepository(this.datasource);

  //데이터 저장
  Future<void> addJob(Job job)async{
    final jobInfo = Job(
      jobTitle: job.jobTitle,
      startTime: job.startTime,
      focusedState: job.focusedState,
    );
    await datasource.addJob(jobInfo);
  }

  //데이터 받아오기
  Stream<List<Job>> getJob(){
    return datasource.getJobs();
  }
}