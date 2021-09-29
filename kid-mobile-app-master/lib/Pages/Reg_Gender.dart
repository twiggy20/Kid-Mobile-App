import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Status.dart';
import 'package:mobile_app/Pages/Registered.dart';
//import 'package:mobile_app/Pages/Sign_In_2.dart';
import 'package:mobile_app/utils/size_config.dart';
import 'package:mobile_app/Pages/Home.dart';

import 'Reg_FName.dart';

class Reg_gender extends StatefulWidget {
  static const String id = "Reg_gender";
  @override
  _Reg_genderState createState() => _Reg_genderState();
}

class _Reg_genderState extends State<Reg_gender> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
            child: Column(
                children:[
                  SizedBox(height: 20,),
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
                                  width: 2
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                  color: Colors.green,
                                  width: 2
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                  color: Colors.green,
                                  width: 2
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                  color: Colors.green,
                                  width: 2
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                  color: Colors.green,
                                  width: 2
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 80,),
                  Column(
                    children: [
                      Text('Are you male or female?',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)
                      ),
                      Container(
                          width: 260,
                          height: 60,
                          margin: EdgeInsets.fromLTRB(10, 60, 5, 40),
                          padding: EdgeInsets.fromLTRB(8, 20, 10, 10),
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                              color: Colors.grey,
                              width: 2
                          )),
                          child:Center(
                            child:Row(
                              children: [
                                Container(
                                  width: 61,
                                  height: 61,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFC8C23E),
                                  ),
                                  child: Center(
                                    child: Image.asset("assets/icons/student.png",width: 28.86,height: 37,fit: BoxFit.contain,),
                                  ),
                                ),
                                SizedBox(width:28),
                                Text(
                                    'I am a male',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF002255),
                                      fontSize:24.56,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                    )
                                ),
                              ],
                            )
                          )
                      ),
                      Container(
                          width: 260,
                          height: 60,
                          margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
                          padding: EdgeInsets.fromLTRB(8, 0, 10, 10),
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 2
                              )),
                          child:Center(
                              child:Row(
                                children: [
                                  Container(
                                    width: 61,
                                    height: 61,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFC8C23E),
                                    ),
                                    child: Center(
                                      child: Image.asset("assets/icons/student.png",width: 28.86,height: 37,fit: BoxFit.contain,),
                                    ),
                                  ),
                                  SizedBox(width:28),
                                  Text(
                                      'I am a female',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF002255),
                                        fontSize:24.56,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                      )
                                  ),
                                ],
                              )
                          )
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, Registered.id);
                        },
                        child: Container(
                            width: 250,
                            height: 60,
                            margin: EdgeInsets.fromLTRB(10, 90, 10, 10),
                            padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                            child:Text('Next',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white30,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal  )),
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.0),
                                    topLeft: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0)),
                                border: Border.all(
                                    color: Colors.grey[400],
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
