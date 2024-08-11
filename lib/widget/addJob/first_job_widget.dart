import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starrywave_practice/widget/addJob/second_job_widget.dart';

class FirstJobWidget extends StatefulWidget {
  final TabController tabController;
  const FirstJobWidget({super.key, required this.tabController});

  @override
  State<FirstJobWidget> createState() => _FirstJobWidgetState();
}

class _FirstJobWidgetState extends State<FirstJobWidget> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("해야하는 일의\n제목을 작성해주세요!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
            SizedBox(height: 60,),
            TextFormField(
              key: _formKey,
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
                  labelText: "할일의 제목을 작성해보세요",
              ),
              controller: emailController,
            ),
            Text("* 20자 이내로 작성해주세요", style: TextStyle(color: Colors.grey.shade400, fontSize: 10),),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: MaterialButton(
                        onPressed: (){
                          widget.tabController.animateTo(1);
                        },
                        child: Text("다음", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                        color: Colors.black,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                        ),
                      )
                    )
                  ],
                )
            )

          ],
        ),
      )
    );
  }
}
