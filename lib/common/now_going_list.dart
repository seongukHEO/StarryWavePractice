import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:starrywave_practice/provider/job_provider.dart';
import 'package:starrywave_practice/screen/modify_todo_screen.dart';
import 'package:starrywave_practice/screen/todo_start_screen.dart';

class NowGoingList extends StatefulWidget {
  const NowGoingList({super.key});

  @override
  State<NowGoingList> createState() => _NowGoingListState();
}

class _NowGoingListState extends State<NowGoingList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final jobAsyncValue = ref.watch(todayJobStreamProvider);
        return jobAsyncValue.when(
            data: (jobs) => Container(
              height: 300,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: jobs.length,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: (){
                        context.go("/modifyJob", extra: jobs[index]);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${jobs[index].jobTitle}", style: TextStyle(fontWeight: FontWeight.bold),),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    width: 35,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade400,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text("집중", style: TextStyle(fontSize: 10, color: Colors.grey.shade700),)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: IconButton(
                                onPressed: (){
                                  context.go("/todoStart", extra: jobs[index]);
                                },
                                icon: Icon(Icons.play_circle_filled_rounded),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            error: (error, value) => Center(child: Text("error : $error"),),
            loading: () => Center(child: CircularProgressIndicator(),)
        );
      }
    );
  }
}
