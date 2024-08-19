import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:starrywave_practice/model/job.dart';

import '../widget/calendar_widget.dart';

class ModifyTodoScreen extends StatefulWidget {

  final Job job;
  const ModifyTodoScreen({super.key, required this.job});

  @override
  State<ModifyTodoScreen> createState() => _ModifyTodoScreenState();
}

class _ModifyTodoScreenState extends State<ModifyTodoScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController modifyController = TextEditingController();

  String calendarText = DateFormat('yyyy-MM-dd').format(DateTime.now());

  bool _noContainer = false;
  bool _calendarButton = true;

  bool _focusState = true;
  bool _nomalState = false;

  void whenToggle(int buttonIndex){
    setState(() {
      if (buttonIndex == 1) {
        _noContainer = true;
        _calendarButton = false;
      }  else if (buttonIndex == 2) {
        _noContainer = false;
        _calendarButton = true;
      }
    });
  }

  void howFocus(int index){
    setState(() {
      if (index == 1) {
        _focusState = true;
        _nomalState = false;
      }  else if (index == 2) {
        _focusState = false;
        _nomalState = true;
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

  void startScreenFocus(){
    final jobFocus = widget.job.focusedState;
    if (jobFocus == true) {
      _focusState = true;
      _nomalState = false;
    }  else if (jobFocus == false) {
      _focusState = false;
      _nomalState = true;
    }
  }
  
  void startScreenDate(){
    final jobTime = widget.job.startTime;
    if (jobTime == "") {
      _noContainer = true;
      _calendarButton = false;
    }  else if (jobTime != "") {
      _noContainer = false;
      _calendarButton = true;
      calendarText = jobTime ?? "";
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startScreenFocus();
    startScreenDate();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('할 일 수정', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("할 일의 제목", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              TextFormField(
                key: _formKey,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  labelText: "${widget.job.jobTitle}",
                ),
                controller: modifyController,
              ),
              SizedBox(height: 60,),
              Text("언제하면 좋은 일인가요?", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: GestureDetector(
                      onTap: (){
                        return whenToggle(1);
                    },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0 , 0, 10, 0),
                        padding: EdgeInsets.all(5),
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black, width: 1),
                          color: _noContainer ? Colors.black : Colors.white
                        ),
                        child: Align(alignment: Alignment.center,child: Text("아직 모르겠어요", style: TextStyle(color: _noContainer ? Colors.white : Colors.black),)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade300
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_calendarButton ? calendarText : "", style: TextStyle(fontWeight: FontWeight.bold),),
                            IconButton(
                                onPressed: (){
                                  _showDialog();
                                  return whenToggle(2);
                                },
                                icon: Icon(Icons.calendar_today)
                            )
                          ],
                        ),
                      )
                  )
                ],
              ),
              SizedBox(height: 60,),
              Text("어느 정도의 집중이 필요한가요?", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      return howFocus(1);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0 , 0, 10, 0),
                      padding: EdgeInsets.all(5),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black, width: 1),
                          color: _focusState ? Colors.black : Colors.white
                      ),
                      child: Align(alignment: Alignment.center,child: Text("작업집중 회로", style: TextStyle(color: _focusState ? Colors.white : Colors.black),)),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      howFocus(2);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0 , 0, 10, 0),
                      padding: EdgeInsets.all(5),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black, width: 1),
                          color: _nomalState ? Colors.black : Colors.white
                      ),
                      child: Align(alignment: Alignment.center,child: Text("기본상태 회로", style: TextStyle(color: _nomalState ? Colors.white : Colors.black),)),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: double.infinity,
                          height: 50,
                          child: MaterialButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text("저장", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                            color: Colors.black,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none
                            ),
                          )
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
