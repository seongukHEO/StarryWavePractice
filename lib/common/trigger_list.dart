import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starrywave_practice/model/job.dart';
import 'package:starrywave_practice/model/trigger.dart';
import 'package:starrywave_practice/provider/trigger_provider.dart';

class TriggerList extends StatefulWidget {

  final String text;
  final Job job;

  const TriggerList({super.key, required this.text, required this.job});

  @override
  State<TriggerList> createState() => _TriggerListState();
}

class _TriggerListState extends State<TriggerList> {

  bool _endJob = true;

  //List<String> items = ["게임인문학 과제 제출", "사이드 프로젝트 작업하기", "취업역량 개발 스터디", "dd", "ff", "aa"];
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final trigger = ref.watch(getTriggerStreamProvider(widget.job.id!));
        return trigger.when(
            data: (data) => SingleChildScrollView(
              child: Container(
                height: 230,
                child: ReorderableListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  buildDefaultDragHandles: false, // 기본 드래그 핸들 제거
                  onReorder: (int oldIndex, int newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final String item = data.removeAt(oldIndex) as String;
                      data.insert(newIndex, item as Trigger);
                    });
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      key: ValueKey(data[index].triggerTitle), // 고유 키 설정
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
                                  print("dkdk : ${widget.text}");
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
                              "${data[index].triggerTitle}",
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
            ),
            error: (error, value) => Center(child: Text("$error"),),
            loading: () => Center(child: CircularProgressIndicator(),)
        );
      }
    );


  }
}
