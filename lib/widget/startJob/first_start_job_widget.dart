import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstStartJobWidget extends StatefulWidget {
  final TabController tabController;
  const FirstStartJobWidget({super.key, required this.tabController});

  @override
  State<FirstStartJobWidget> createState() => _FirstStartJobWidgetState();
}

class _FirstStartJobWidgetState extends State<FirstStartJobWidget> {

  bool _tenDown = true;
  bool _thirtyDown = false;
  bool _thirtyUp = false;

  void _timeChoose(int index){
    setState(() {
      if (index == 1) {
        _tenDown = true;
        _thirtyDown = false;
        _thirtyUp = false;
      }   else if (index == 2) {
        _tenDown = false;
        _thirtyDown = true;
        _thirtyUp = false;
      }  else if (index == 3) {
        _tenDown = false;
        _thirtyDown = false;
        _thirtyUp = true;
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
            Text("이 일은 얼마나 걸리는\n일 인가요?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
            SizedBox(height: 10,),
            Text("게임 인문학 과제 제출을 하기위해\n대략적인 시간을 예측해보세요!", style: TextStyle(color: Colors.grey, fontSize: 12),),
            SizedBox(height: 70,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
                    child: MaterialButton(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      color: _tenDown ? Colors.black : Colors.white,
                      onPressed: (){
                        return _timeChoose(1);
                      },
                      child: Text("10분 이하", style: TextStyle(fontWeight: FontWeight.bold, color: _tenDown ? Colors.white : Colors.black),),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: MaterialButton(
                        color: _thirtyDown ? Colors.black : Colors.white,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),

                        ),
                        onPressed: (){
                          return _timeChoose(2);
                        },
                        child: Text("30분 이하", style: TextStyle(fontWeight: FontWeight.bold, color: _thirtyDown ? Colors.white : Colors.black),),
                      ),
                    )
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: MaterialButton(
                        color: _thirtyUp ? Colors.black : Colors.white,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),

                        ),
                        onPressed: (){
                          return _timeChoose(3);
                        },
                        child: Text("30분 이상", style: TextStyle(fontWeight: FontWeight.bold, color: _thirtyUp ? Colors.white : Colors.black),),
                      ),
                    )
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
                            Navigator.pop(context);
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
                              widget.tabController.animateTo(1);
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
