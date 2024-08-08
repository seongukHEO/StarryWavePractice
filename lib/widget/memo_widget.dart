import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemoWidget extends StatefulWidget {
  const MemoWidget({super.key});

  @override
  State<MemoWidget> createState() => _MemoWidgetState();
}

class _MemoWidgetState extends State<MemoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("갑자기 생각난 일이\n있다면 추가해보세요!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("작업집중 회로", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                Text("3개", style: TextStyle(color: Colors.grey, fontSize: 14),)
              ],
            ),
            SizedBox(height: 10,),
            GridView.builder(
              shrinkWrap: true,  // 이 속성을 추가하세요.
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 2
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.grey.shade200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CTO 기술경영\n과제 제출", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: ElevatedButton(
                              onPressed: () {
                                // 버튼 클릭 시 동작
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade400, // 배경색 설정
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30), // 모서리 반경 설정
                                ),
                              ),
                              child: Text(
                                "집중",
                                style: TextStyle(color: Colors.grey.shade700),
                              ),
                            ),
                            width: 80,
                            height: 20,
                          ),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.play_circle)
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
