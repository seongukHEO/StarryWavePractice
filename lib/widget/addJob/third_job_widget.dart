import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/common/flex_button.dart';

class ThirdJobWidget extends StatefulWidget {
  final TabController tabController;
  const ThirdJobWidget({super.key, required this.tabController});

  @override
  State<ThirdJobWidget> createState() => _ThirdJobWidgetState();
}

class _ThirdJobWidgetState extends State<ThirdJobWidget> {

  bool isFirstContainer = true;
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
                        widget.tabController.animateTo(1);
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
                          Navigator.pop(context);
                        },
                        child: Text("추가하기", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
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
