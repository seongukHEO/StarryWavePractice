import 'package:starrywave_practice/data/firebase_job_dataSource.dart';
import 'package:starrywave_practice/model/job.dart';

class JobRepository {
  final FirebaseJobDatasource datasource;

  JobRepository(this.datasource);

  Future<void> addJob(Job job)async{
    final jobInfo = Job(
      jobTitle: job.jobTitle,
      startTime: job.startTime,
      focusedState: job.focusedState,
    );
    await datasource.addJob(jobInfo);
  }
}