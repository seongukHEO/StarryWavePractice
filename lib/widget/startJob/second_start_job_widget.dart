
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/common/build_chips.dart';
import 'package:starrywave_practice/screen/timer_screen.dart';

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
            BuildChips(),
            Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
                        child: MaterialButton(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          onPressed: (){
                            widget.tabController.animateTo(0);
                          },
                          child: Text("이전", style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                          height: 45,
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: MaterialButton(
                            color: Colors.black,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return TimerScreen();
                              }));
                            },
                            child: Text("시작하기", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        )
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
