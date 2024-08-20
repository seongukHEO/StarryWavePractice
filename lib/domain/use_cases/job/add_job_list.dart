

import 'package:starrywave_practice/domain/repo/job_repository.dart';

import '../../../model/job.dart';

class AddJobList{
  final JobRepository repo;

  AddJobList(this.repo);

  Future<void> call(Job job)async{
    await repo.addJob(job);
  }

  Future<void> callUpdate(String jobId, Job job)async{
    await repo.updateJob(jobId, job);
  }
}