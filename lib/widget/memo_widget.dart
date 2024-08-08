import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/common/condition_grid.dart';
import 'package:starrywave_practice/common/job_grid.dart';

class MemoWidget extends StatefulWidget {
  const MemoWidget({super.key});

  @override
  State<MemoWidget> createState() => _MemoWidgetState();
}

class _MemoWidgetState extends State<MemoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("갑자기 생각난 일이\n있다면 추가해보세요!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("작업집중 회로", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text("3개", style: TextStyle(color: Colors.grey, fontSize: 14),)
                ],
              ),
              SizedBox(height: 10,),
              JobGrid(),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("기본상태 회로", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text("2개", style: TextStyle(color: Colors.grey, fontSize: 14),)
                ],
              ),
              SizedBox(height: 10,),
              ConditionGrid()
            ],
          ),
        ),
      ),
    );
  }
}
