import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/common/now_going_list.dart';

class TodayTodoWidget extends StatefulWidget {
  const TodayTodoWidget({super.key});

  @override
  State<TodayTodoWidget> createState() => _TodayTodoWidgetState();
}

class _TodayTodoWidgetState extends State<TodayTodoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("2024년 7월", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 100,),
              Text("지금! 당장 바로 해야하는\n3가지를 아래에서 골라 보세요!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              SizedBox(height: 10,),
              NowGoingList(),
            ],
          ),
        ),
      ),
    );
  }
}
