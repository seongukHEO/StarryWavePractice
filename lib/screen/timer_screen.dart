import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> with TickerProviderStateMixin {
   late AnimationController controller;
  late Animation<Color?> _colorTween;

  bool isRunning = false;

  int totalSeconds = 1500;
  
  late Timer timer;
  

  
  @override
  void initState() {
    // TODO: implement initState
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    //   ..addListener((){
    //   setState(() {
    //   });
    // });
    _colorTween = controller.drive(ColorTween(begin: Colors.cyanAccent, end: Colors.cyanAccent));
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
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
                          backgroundColor: Colors.white,
                          strokeWidth: 20,
                          value: controller.value,
                          valueColor: _colorTween,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("남은 시간", style: TextStyle(fontSize: 20),),
                              Text(
                                (controller.value * 100).toInt().toString(),
                                style: TextStyle(fontSize: 50, color: Colors.lightGreenAccent),
                              ),
                              IconButton(
                                  onPressed: (){},
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
