import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void clearJobDialog(BuildContext context){
  showDialog(
      context: context,
      //이건 바깥 영역을 클릭해도 Dialog가 안지워짐
      barrierDismissible: false,
      builder: (context){
        //3초 후에 자동으로 Dialog를 닫기
        Future.delayed(Duration(seconds: 10), (){
          Navigator.pop(context);
        });
        return Stack(
          children: [
            BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('assets/task_lottie.json', width: 200, height: 200, fit: BoxFit.fill),
                  SizedBox(height: 20,),
                  Text("시작이 반이다", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, decoration: TextDecoration.none),),
                  SizedBox(height: 10,),
                  Text("시작트리거를 모두 완료하셨군요.\n용기있는 시작! 조금 더 힘내서 완료해보아요!", style: TextStyle(color: Colors.grey, fontSize: 12, decoration: TextDecoration.none),),
                ],
              ),
            )
          ],
        );
      }
  );
}