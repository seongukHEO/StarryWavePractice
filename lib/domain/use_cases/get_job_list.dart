

import 'package:starrywave_practice/domain/repo/job_repository.dart';

import '../../model/job.dart';

class GetJobList {
  final JobRepository repository;
  GetJobList(this.repository);

  Stream<List<Job>> call(){
    return repository.getJob();
  }

  Stream<List<Job>> callFromDate(String date){
    return repository.getJobForDate(date);
  }
}