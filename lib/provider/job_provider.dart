

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';
import 'package:starrywave_practice/data/firebase_job_dataSource.dart';
import 'package:starrywave_practice/domain/repo/job_repository.dart';
import 'package:starrywave_practice/domain/use_cases/job/get_job_list.dart';
import 'package:starrywave_practice/model/job.dart';
import 'package:starrywave_practice/domain/use_cases/job/add_job_list.dart';

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
  JobNotifier() : super(Job(jobTitle: "", startTime: "", focusedState: true));


    //제목 추가
    void addTitle(String jobTitle){
      state = state.copyWith(jobTitle: jobTitle);
    }

    //날짜 추가
    void addDate(String date){
      state = state.copyWith(startTime: date);
    }

    //중요도
    void addFocusState(bool focused){
      state = state.copyWith(focusedState: focused);
    }

  }
  final jobInfoProvider = StateNotifierProvider<JobNotifier, Job>((ref) => JobNotifier());

  //데이터 받아오기
  final getJobProvider = Provider((ref){
    return GetJobList(ref.watch(jobRepositoryProvider));
  });


  final getJobFutureProvider = StreamProvider((ref){
    return ref.watch(getJobProvider).call();
  });


  //오늘 날짜 데이터 받아오기
 final todayJobStreamProvider = StreamProvider<List<Job>>((ref){
    final todayDate = DateTime.now().toIso8601String().split('T').first;
    return ref.watch(getJobProvider).callFromDate(todayDate);
  });


  //데이터 수정
  final updateJobFutureProvider = FutureProvider.family<void, Map<String, dynamic>>((ref, data)async{
    final jobId = data['id'] as String;
    final job = data['job'] as Job;
    await ref.watch(addJobProvider).callUpdate(jobId, job);
  });










