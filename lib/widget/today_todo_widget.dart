import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:starrywave_practice/common/now_going_list.dart';
import 'package:starrywave_practice/common/today_end_job_list.dart';
import 'package:starrywave_practice/common/today_todo_list.dart';

class TodayTodoWidget extends StatefulWidget {
  const TodayTodoWidget({super.key});

  @override
  State<TodayTodoWidget> createState() => _TodayTodoWidgetState();
}

class _TodayTodoWidgetState extends State<TodayTodoWidget> {

  final formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${formattedDate}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text("출발! 빨리 끝내고 쉬어요"),
                    SizedBox(height: 70,),
                    Text("지금! 당장 바로 해야하는\n3가지를 아래에서 골라 보세요!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    SizedBox(height: 10,),
                    NowGoingList(),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(18),
                height: 860,
                width: double.infinity,
                color: Colors.grey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("오늘 할 일", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    Text("우선순위 파악이 가능하다면 순서대로 정리해보세요", style: TextStyle(fontSize: 12, color: Colors.grey.shade800),),
                    SizedBox(height: 20,),
                    TodayTodoList(),
                    Divider(height: 1, color: Colors.grey.shade700,),
                    SizedBox(height: 10,),
                    TodayTodoList(),
                    Divider(height: 1, color: Colors.grey.shade700,),
                    SizedBox(height: 10,),
                    TodayTodoList(),


                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("완료한 일", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text("2개"),
                      ],
                    ),
                    SizedBox(height: 10,),
                    TodayEndJobList()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
