import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Reg_FName2.dart';
import 'package:mobile_app/Pages/Reg_Surname2.dart';
import 'package:mobile_app/utils/size_config.dart';
// ignore: camel_case_types
class Reg_fname2 extends StatefulWidget {
  //const status({Key? key}) : super(key: key);
  static const String id = "reg_file2";

  @override
  _Reg_fname2State createState() => _Reg_fname2State();
}

// ignore: camel_case_types
class _Reg_fname2State extends State<Reg_fname2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
                children:[
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                  color: Colors.green,
                                  width: 3
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: 2,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Color(0xFFDADADA),
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Color(0xFFDADADA),
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Color(0xFFDADADA) ,
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Color(0xFFDADADA),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 80),
                  Column(
                    children: [
                      Text('What is your first name?',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)
                      ),
                      SizedBox(height:70),
                      // Expanded(
                      SingleChildScrollView(
                        child:InkWell(
                          onTap: (){
                           // Navigator.pushNamed(context,Reg_fname2.id);
                          },
                          child:ConstrainedBox(
                            constraints: BoxConstraints.tightFor(width: 280),
                            child: TextFormField(
                              decoration:InputDecoration(
                                hintText:'Touch here to input your first name',
                                hintStyle: TextStyle(color: Colors.grey,  fontSize: 20,
                                    fontWeight: FontWeight.normal),
                                fillColor:  Colors.grey[100],
                                // filled: true,
                                enabledBorder:OutlineInputBorder(
                                    borderSide:BorderSide(color:Colors.grey, width:2)
                                ),
                                 focusedBorder:OutlineInputBorder(
                                   borderSide:BorderSide(color:Colors.black, width:2)
                               ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Reg_surname2.id);
                        },
                         child:Container(
                            width: 250,
                            height: 50,
                            margin: EdgeInsets.fromLTRB(10, 90, 10, 10),
                            padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                            child:Text('Next',
                                textAlign: TextAlign.center,
                                 style: TextStyle(color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal  )),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.0),
                                    topLeft: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0)),
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2
                                ))
                        ),
                      )
                    ],

                  )
                ]
            )
        )

    );
  }
}
