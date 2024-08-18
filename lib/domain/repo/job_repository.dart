import 'package:starrywave_practice/data/firebase_job_dataSource.dart';
import 'package:starrywave_practice/model/job.dart';

class JobRepository {
  final FirebaseJobDatasource datasource;

  JobRepository(this.datasource);

  Future<void> addJob(Job job)async{
    final jobInfo = Job(
      jobIdx: job.jobIdx,
      jobTitle: job.jobTitle,
      startTime: job.startTime,
      focusedState: job.focusedState,
      jobTime: job.jobTime,
      fomodoroCount: job.fomodoroCount,
      totalFocusTime: job.totalFocusTime
    );
    await datasource.addJob(jobInfo);
  }
}