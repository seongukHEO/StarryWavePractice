import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:starrywave_practice/provider/job_provider.dart';
import 'package:starrywave_practice/screen/modify_todo_screen.dart';
import 'package:starrywave_practice/screen/todo_start_screen.dart';

class JobGrid extends StatefulWidget {
  const JobGrid({super.key});

  @override
  State<JobGrid> createState() => _JobGridState();
}

class _JobGridState extends State<JobGrid> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final jobAsyncValue = ref.watch(getJobFutureProvider);
        return jobAsyncValue.when(
            data: (jobs) => GridView.builder(
              shrinkWrap: true,  // 이 속성을 추가하세요.
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 3 / 2
              ),
              itemCount: jobs.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    context.go("/modifyJob", extra: jobs[index].jobTitle);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${jobs[index].jobTitle}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 35,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text("집중", style: TextStyle(fontSize: 10, color: Colors.grey.shade700),)),
                              ),
                              IconButton(
                                  onPressed: (){
                                    context.go("/todoStart");
                                  },
                                  icon: Icon(Icons.play_circle)
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            error: (error, stack) => Center(child: Text("Error : $error"),),
            loading: () => Center(child: CircularProgressIndicator(),)
        );
      }
    );
  }
}
