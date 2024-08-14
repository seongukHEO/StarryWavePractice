import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> with TickerProviderStateMixin {
  
  static const maxSecond = 1500; //25분
  int remainingSecond = maxSecond;  // 남은 시간
  Timer? _timer;
  bool isRunning = false;

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }
  
  void startTimer(){
    _timer = Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        if (remainingSecond > 0) {
          remainingSecond--;  //남은 시간을 1초씩 줄인다
        }  
        else{
          _timer?.cancel();  //시간이 0이되면 타이머 중지
        }
      });
    });
  }
  
  void toggleTimer(){
    if (isRunning) {
      //타이머를 일시 정지
      _timer?.cancel();
    }  else{
      //재시작
      startTimer();
    }
    setState(() {
      isRunning = !isRunning;
    });
  }
  
  //시간 변환
  String formatTime(int seconds){
    int minutes = seconds ~/ 60;
    int sec = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("경영시험 공부하기에", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),),
                Text("일단 딱 25분 만 집중해보아요!",  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18)),
                SizedBox(height: 50,),
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          backgroundColor: Colors.cyanAccent,
                          strokeWidth: 20,
                          value: remainingSecond / maxSecond , //점점 줄어들게끔 구현
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("남은 시간", style: TextStyle(fontSize: 20),),
                              Text(
                                formatTime(remainingSecond),
                                style: TextStyle(fontSize: 50, color: Colors.lightGreenAccent),
                              ),
                              IconButton(
                                  onPressed: toggleTimer,
                                  iconSize: 60,
                                  icon: Icon(
                                    isRunning
                                        ? Icons.pause
                                        : Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                              )
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
