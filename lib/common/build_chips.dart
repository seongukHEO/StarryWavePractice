import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildChips extends StatefulWidget {
  final String label;
  final Color color;
  const BuildChips({super.key, required this.label, required this.color});

  @override
  State<BuildChips> createState() => _BuildChipsState();
}

class _BuildChipsState extends State<BuildChips> {

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: EdgeInsets.all(2),
        label: Text(widget.label, style: TextStyle(color: Colors.white),),
      backgroundColor: widget.color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8),

    );
  }
}
