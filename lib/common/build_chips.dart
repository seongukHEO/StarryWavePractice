import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildChips extends StatefulWidget {
  
  const BuildChips({super.key});

  @override
  State<BuildChips> createState() => _BuildChipsState();
}

class _BuildChipsState extends State<BuildChips> {

  List<Map<String, dynamic>> _chips = [];
  
  TextEditingController _chipController = TextEditingController();

  void _showDialog()async{
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Align(
              alignment: Alignment.center,
              child: Text("경영시험 공부하기의\n새 시작트리거를 추가해보세요", style: TextStyle(fontSize: 16),),
            ),
            content: Container(
              height: 200,
              width: 300,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    controller: _chipController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      labelText: "시작트리거를 작성하세요!",
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 45,
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
                          child: MaterialButton(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text("이전", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: MaterialButton(
                              color: Colors.black,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none
                              ),
                              onPressed: (){
                                _addChip(_chipController.text);
                                Navigator.pop(context);
                              },
                              child: Text("추가하기", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }
    );
  }

  void _addChip(String label){
    setState(() {
      _chips.add({"label" : label, "isSelected" : false});
    });
    _chipController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: [
        ..._chips.map((chip) {
          return ChoiceChip(
            label: Text(
              chip["label"],
              style: TextStyle(
                color: chip["isSelected"] ? Colors.white : Colors.black,
              ),
            ),
            selected: chip["isSelected"],
            selectedColor: Colors.black,
            backgroundColor: Colors.grey.shade300,
            onSelected: (bool selected) {
              setState(() {
                chip["isSelected"] = selected;
              });
            },
          );
        }).toList(),
        GestureDetector(
          onTap: () {
            _showDialog();
          },
          child: Chip(
            label: Text(
              "+ 직접 추가하기",
              style: TextStyle(color: Colors.blueAccent.shade700),
            ),
            backgroundColor: Colors.blue.shade100,
            elevation: 6.0,
            shadowColor: Colors.grey[60],
            padding: EdgeInsets.all(8),
          ),
        ),
      ],
    );
  }
}
























