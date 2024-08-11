import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModifyTodoScreen extends StatefulWidget {
  const ModifyTodoScreen({super.key});

  @override
  State<ModifyTodoScreen> createState() => _ModifyTodoScreenState();
}

class _ModifyTodoScreenState extends State<ModifyTodoScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController modifyController = TextEditingController();
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
                  labelText: "제목을 수정해주세요",
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
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0 , 0, 10, 0),
                      padding: EdgeInsets.all(5),
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white
                      ),
                      child: Align(alignment: Alignment.center,child: Text("아직 모르겠어요")),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade400
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("2024-08-12", style: TextStyle(fontWeight: FontWeight.bold),),
                            IconButton(
                                onPressed: (){},
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
                  Container(
                    margin: EdgeInsets.fromLTRB(0 , 0, 10, 0),
                    padding: EdgeInsets.all(5),
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white
                    ),
                    child: Align(alignment: Alignment.center,child: Text("작업집중 회로")),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0 , 0, 10, 0),
                    padding: EdgeInsets.all(5),
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white
                    ),
                    child: Align(alignment: Alignment.center,child: Text("기본상태 회로")),
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
