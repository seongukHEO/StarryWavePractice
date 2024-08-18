import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';
import 'package:starrywave_practice/data/firebase_job_dataSource.dart';
import 'package:starrywave_practice/domain/repo/job_repository.dart';
import 'package:starrywave_practice/model/job.dart';
import 'package:starrywave_practice/domain/use_cases/add_job_list.dart';

final firebaseJobDataSourceProvider = Provider((ref){
  return FirebaseJobDatasource(FirebaseFirestore.instance);
});

final jobRepositoryProvider = Provider((ref){
  return JobRepository(ref.watch(firebaseJobDataSourceProvider));
});

final addJobProvider = Provider((ref){
  return AddJobList(ref.watch(jobRepositoryProvider));
});

final addJobFutureProvider = FutureProvider.family<void, Job>((ref, job)async{
  await ref.watch(addJobProvider).call(job);
});


class JobNotifier extends StateNotifier<Job>{
  JobNotifier() : super(Job(jobIdx: 0, jobTitle: "", startTime: "", focusedState: true))

    //idx
    void addIdx(int index){
      state = state.copyWith(jobIdx: index);
    }

    //제목 업데이트
    void addTitle(String jobTitle){
      state = state.copyWith(jobTitle: jobTitle);
    }

    //날짜 업데이트
    void addDate(String date){
      state = state.copyWith(startTime: date);
    }

    //중요도
    void addFocusState(bool focused){
      state = state.copyWith(focusedState: focused);
    }

  }
  final jobInfoProvider = StateNotifierProvider<JobNotifier, Job>((ref) => JobNotifier());










