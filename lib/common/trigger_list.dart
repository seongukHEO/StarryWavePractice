import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TriggerList extends StatefulWidget {
  const TriggerList({super.key});

  @override
  State<TriggerList> createState() => _TriggerListState();
}

class _TriggerListState extends State<TriggerList> {

  bool _endJob = true;

  List<String> items = ["게임인문학 과제 제출", "사이드 프로젝트 작업하기", "취업역량 개발 스터디", "dd", "ff", "aa"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 230,
        child: ReorderableListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          buildDefaultDragHandles: false, // 기본 드래그 핸들 제거
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
              padding: EdgeInsets.symmetric(vertical: 4), // 위아래 패딩 추가
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade800, // 드래그 중에도 유지할 배경색
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: _endJob,
                      onChanged: (bool? value) {
                        setState(() {
                          _endJob = value ?? false;
                        });
                      },
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.selected)) {
                          return Colors.cyanAccent;  // 체크박스가 선택되었을 때 내부 색상
                        }
                        return Colors.grey.shade500;  // 선택되지 않았을 때 내부 색상
                      }),
                    ),
                    Text(
                      "${items[index]}",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    // 커스터마이즈된 드래그 핸들
                    ReorderableDragStartListener(
                      index: index,
                      child: Icon(Icons.drag_handle, color: Colors.white12),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );


  }
}
