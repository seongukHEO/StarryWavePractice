import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  final Function(DateTime selectDate) onSave;
  const CalendarWidget({super.key, required this.onSave});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {

  void showSnackbar(String message){
    var snackBar = SnackBar(
      content: Text(message, style: TextStyle(color: Colors.black),),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.white,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  DateTime _focusDay = DateTime.now();
  DateTime? _selectDay;

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      title: Align(
          alignment: Alignment.center,
          child: Text("날짜 선택", style: TextStyle(fontWeight: FontWeight.bold),)),
      content: Container(
        height: 400,
        width: 400,
        child: SingleChildScrollView(
          child: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  children: [
                    TableCalendar(
                      focusedDay: _focusDay,
                      firstDay: DateTime(2020),
                      lastDay: DateTime(2030),
                      selectedDayPredicate: (day){
                        return isSameDay(_selectDay, day);
                      },
                      headerStyle: HeaderStyle(
                        titleCentered: true,
                        formatButtonVisible: false,
                      ),
                      onDaySelected: (selectDay, focusedDay){
                        setState(() {
                          _selectDay = selectDay;
                          _focusDay = focusedDay;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text("취소")
                        ),
                        TextButton(
                            onPressed: (){
                              widget.onSave(
                                  _selectDay ?? _focusDay
                              );
                              Navigator.pop(context);
                            },
                            child: Text("확인")
                        ),
                      ],
                    )
                  ],
                );
              }
          ),
        ),
      ),
    );
  }
}