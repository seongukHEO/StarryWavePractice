import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/common/flex_button.dart';

class ThirdJobWidget extends StatefulWidget {
  const ThirdJobWidget({super.key});

  @override
  State<ThirdJobWidget> createState() => _ThirdJobWidgetState();
}

class _ThirdJobWidgetState extends State<ThirdJobWidget> {

  bool isFirstContainer = false;
  bool isSecondContainer = false;

  void toggleButtonStyle(int buttonIndex){
    setState(() {
      if (buttonIndex == 1) {
        isFirstContainer = true;
        isSecondContainer = false;
      }  else if (buttonIndex == 2) {
        isFirstContainer = false;
        isSecondContainer = true;
      }
    });
  }

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
                    return toggleButtonStyle(1);
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(25),
                        color: isFirstContainer ? Colors.black : Colors.white
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "작업집중 회로",
                          style: TextStyle(
                              fontSize: 13,
                              color: isFirstContainer ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    return toggleButtonStyle(2);
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(25),
                        color: isSecondContainer ? Colors.black : Colors.white
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "기본상태 회로",
                          style: TextStyle(
                              fontSize: 13,
                              color: isSecondContainer ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),
            FlexButton(name: "이전", name2: "추가하기")
          ],
        ),
      ),
    );
  }
}
