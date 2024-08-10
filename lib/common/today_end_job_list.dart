import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayEndJobList extends StatefulWidget {
  const TodayEndJobList({super.key});

  @override
  State<TodayEndJobList> createState() => _TodayEndJobListState();
}

class _TodayEndJobListState extends State<TodayEndJobList> {
  List<String> jobs = ["게임인문학 과제 제출", "방청소 하기"];
  bool _endJob = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: jobs.length,
          itemBuilder: (context, index){
            return Container(
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
                        Text("${jobs[index]}", style: TextStyle(fontWeight: FontWeight.bold),),
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
                      child: Checkbox(
                        value: _endJob,
                        onChanged: (bool? value){
                         setState(() {
                           _endJob = value ?? false;
                         });
                        },
                      )
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
