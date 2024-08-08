import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/widget/memo_widget.dart';
import 'package:starrywave_practice/widget/my_page_widget.dart';
import 'package:starrywave_practice/widget/today_todo_widget.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({super.key});

  @override
  State<HomeScreem> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreem> {

  int _bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IndexedStack(
        index: _bottomIndex,
        children: [
          MemoWidget(),
          TodayTodoWidget(),
          MyPageWidget()
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _bottomIndex,
        onDestinationSelected: (idx){
          setState(() {
            _bottomIndex = idx;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.add_box), label: "할일 메모"),
          NavigationDestination(icon: Icon(Icons.calendar_month_rounded), label: "일일 할일"),
          NavigationDestination(icon: Icon(Icons.person), label: "마이페이지"),
        ],
      ),
    );
  }
}
