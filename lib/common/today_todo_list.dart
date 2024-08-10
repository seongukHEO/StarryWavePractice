import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayTodoList extends StatefulWidget {
  const TodayTodoList({super.key});

  @override
  State<TodayTodoList> createState() => _TodayTodoListState();
}

class _TodayTodoListState extends State<TodayTodoList> {
  List<String> items = ["게임인문학 과제 제출", "사이드 프로젝트 작업하기", "취업역량 개발 스터디"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ReorderableListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final String item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
        itemBuilder: (context, index) {
          return Container(
            key: ValueKey(items[index]), // 고유 키 설정
            // margin을 padding으로 변경합니다.
            padding: EdgeInsets.symmetric(vertical: 4), // 위아래 패딩을 추가하여 간격 유지
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${items[index]}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          width: 35,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "집중",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.drag_handle),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



