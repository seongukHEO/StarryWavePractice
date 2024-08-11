
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:starrywave_practice/common/flex_button.dart';
import 'package:starrywave_practice/widget/calendar_widget.dart';

class SecondJobWidget extends StatefulWidget {
  const SecondJobWidget({super.key});

  @override
  State<SecondJobWidget> createState() => _SecondJobWidgetState();
}

class _SecondJobWidgetState extends State<SecondJobWidget> {
  String calendarText = "0000.00.00";

  void _showDialog()async{
    showDialog(
        context: context,
        builder: (context){
          return CalendarWidget(onSave: (DateTime selectTime){
            setState(() {
              calendarText = selectTime.toString();
              print("날짜 ${selectTime}");
            });
          });
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("이 일은 언제하면\n좋은 일인가요?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
            SizedBox(height: 10,),
            Text("경영과제 조사하기는 언제하면\n좋은 일인가요?", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 50,),
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
                    child: Text("아직 모르겠어요", style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 50,),
            Text("예상 가능하다면 날짜나\n마감일이 있다면 선택해보세요.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
            SizedBox(height: 15,),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade300
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${calendarText}", style: TextStyle(color: Colors.grey),),
                  IconButton(
                      onPressed: (){
                        _showDialog();
                      },
                      icon: Icon(Icons.calendar_today)
                  )
                ],
              ),
            ),
            FlexButton(name: "이전", name2: '다음',)
          ],
        ),
      ),
    );
  }
}
