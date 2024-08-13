import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/common/build_chips.dart';

class SecondStartJobWidget extends StatefulWidget {
  final TabController tabController;
  const SecondStartJobWidget({super.key, required this.tabController});

  @override
  State<SecondStartJobWidget> createState() => _SecondStartJobWidgetState();
}

class _SecondStartJobWidgetState extends State<SecondStartJobWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("5분! 시작트리거\n1~3개를 선택 해주세요", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
            SizedBox(height: 10,),
            Text("경영시험 공부하기(을)를 시작하기 위해 5분동안 할 수 있는\n아주 간단한 일은 무엇인가요?", style: TextStyle(fontSize: 12, color: Colors.grey),),
            SizedBox(height: 50,),
            BuildChips()
          ],
        ),
      ),
    );
  }
}
