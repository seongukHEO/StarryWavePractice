import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/model/job.dart';
import 'package:starrywave_practice/widget/startJob/first_start_job_widget.dart';
import 'package:starrywave_practice/widget/startJob/second_start_job_widget.dart';

class TodoStartScreen extends StatefulWidget {
  final Job job;

  const TodoStartScreen({super.key, required this.job});

  @override
  State<TodoStartScreen> createState() => _TodoStartScreenState();
}

class _TodoStartScreenState extends State<TodoStartScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> tabs = <Tab>[
    Tab(text: "1"),
    Tab(text: "2"),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 180,
                  child: TabBar(
                    tabs: tabs,
                    controller: _tabController,
                    indicatorColor: Colors.black,
                    labelColor: Colors.grey.shade600,
                    unselectedLabelColor: Colors.grey.shade300,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.dangerous_outlined),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  FirstStartJobWidget(tabController: _tabController),
                  SecondStartJobWidget(tabController: _tabController, job: widget.job),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

