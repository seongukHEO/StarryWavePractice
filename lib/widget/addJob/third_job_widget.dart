import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/common/flex_button.dart';

class ThirdJobWidget extends StatefulWidget {
  const ThirdJobWidget({super.key});

  @override
  State<ThirdJobWidget> createState() => _ThirdJobWidgetState();
}

class _ThirdJobWidgetState extends State<ThirdJobWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("집중을 많이 요하는\n일인가요?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
            SizedBox(height: 10,),
            Text("경영과제 조사하기는 집중을 많이 해야\n완료 할 수 있는 일인가요?", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 50,),
            Row(
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("작업집중 회로", style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),)),
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("기본상태 회로", style: TextStyle(fontSize: 13, color: Colors.grey.shade800, fontWeight: FontWeight.bold),),
                    ),
                  ),
                )
              ],
            ),
            FlexButton(name: "이전", name2: "추가하기")
          ],
        ),
      ),
    );
  }
}
