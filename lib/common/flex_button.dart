import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexButton extends StatefulWidget {
  final String name;
  final String name2;
  const FlexButton({super.key, required this.name, required this.name2});

  @override
  State<FlexButton> createState() => _FlexButtonState();
}

class _FlexButtonState extends State<FlexButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
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
                  onPressed: (){},
                  child: Text("${widget.name}", style: TextStyle(fontWeight: FontWeight.bold),),
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
                    onPressed: (){},
                    child: Text("${widget.name2}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                )
            )
          ],
        )
    );
  }
}
