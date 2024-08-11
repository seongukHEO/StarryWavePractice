import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  final Function(String selectDate) onSave;
  const CalendarWidget({super.key, required this.onSave});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {

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
                          _selectDay = DateTime(
                            selectDay.year,
                            selectDay.month,
                            selectDay.day
                          );
                          _focusDay = DateTime(
                            focusedDay.year,
                            focusedDay.month,
                            focusedDay.day
                          );
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
                              String fomattedDate = DateFormat('yyyy-MM-dd').format(
                                _selectDay ?? _focusDay
                              );
                              widget.onSave(fomattedDate);
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