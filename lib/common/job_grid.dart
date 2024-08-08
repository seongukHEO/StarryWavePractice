import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobGrid extends StatefulWidget {
  const JobGrid({super.key});

  @override
  State<JobGrid> createState() => _JobGridState();
}

class _JobGridState extends State<JobGrid> {
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
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15)
          ),
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CTO 기술경영\n과제 제출", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              Container(
                child: Row(
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
              ),
            ],
          ),
        );
      },
    );
  }
}
