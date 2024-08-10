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
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CTO 기술경영\n과제 제출", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
              Container(
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
