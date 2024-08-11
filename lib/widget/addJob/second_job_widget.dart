
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:starrywave_practice/common/flex_button.dart';
import 'package:starrywave_practice/widget/calendar_widget.dart';

class SecondJobWidget extends StatefulWidget {
  final TabController tabController;
  const SecondJobWidget({super.key, required this.tabController});

  @override
  State<SecondJobWidget> createState() => _SecondJobWidgetState();
}

class _SecondJobWidgetState extends State<SecondJobWidget> {
  String calendarText = DateFormat('yyyy-MM-dd').format(DateTime.now());

  bool _firstContainer = false;
  bool _calendarButton = true;


  void selectEvent(int Index){
    setState(() {
      if (Index == 1) {
        _firstContainer = true;
        _calendarButton = false;
      }  else if (Index == 2) {
        _firstContainer = false;
        _calendarButton = true;
      }
    });
  }

  void _showDialog()async{
    showDialog(
        context: context,
        builder: (context){
          return CalendarWidget(onSave: (String selectTime){
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
              child: GestureDetector(
                onTap: (){
                  return selectEvent(1);
                },
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(25),
                    color: _firstContainer ? Colors.black : Colors.white
                  ),
                  child: Align(
                    alignment: Alignment.center,
                      child: Text("아직 모르겠어요",
                        style: TextStyle(
                            fontSize: 13,
                            color: _firstContainer ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                  ),
                ),
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
                  Text(
                    _calendarButton ? "${calendarText}" : "",
                    style: TextStyle(color: Colors.grey),),
                  IconButton(
                      onPressed: (){
                        _showDialog();
                        return selectEvent(2);
                      },
                      icon: Icon(Icons.calendar_today)
                  )
                ],
              ),
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
                          widget.tabController.animateTo(2);
                        },
                        child: Text("다음", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
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
