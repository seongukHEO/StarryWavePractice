import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/modify_todo_screen.dart';
import '../screen/todo_start_screen.dart';

class ConditionGrid extends StatefulWidget {
  const ConditionGrid({super.key});

  @override
  State<ConditionGrid> createState() => _ConditionGridState();
}

class _ConditionGridState extends State<ConditionGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,  // 이 속성을 추가하세요.
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ModifyTodoScreen();
            }));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15)
            ),
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("책상 정리하기", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 35,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("집중", style: TextStyle(fontSize: 10, color: Colors.grey.shade700),)),
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TodoStartScreen();
                            }));
                          },
                          icon: Icon(Icons.play_circle)
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
