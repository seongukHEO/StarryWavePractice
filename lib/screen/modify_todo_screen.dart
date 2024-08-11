import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModifyTodoScreen extends StatefulWidget {
  const ModifyTodoScreen({super.key});

  @override
  State<ModifyTodoScreen> createState() => _ModifyTodoScreenState();
}

class _ModifyTodoScreenState extends State<ModifyTodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('할 일 수정', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
    );
  }
}
