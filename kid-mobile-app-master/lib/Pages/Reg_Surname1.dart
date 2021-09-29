import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Reg_Age1.dart';
import 'package:mobile_app/utils/size_config.dart';

// ignore: camel_case_types
class Reg_surname1 extends StatefulWidget {
  //const status({Key? key}) : super(key: key);
  static const String id = "reg_surname";

  @override
  _Reg_surname1 createState() => _Reg_surname1();
}

// ignore: camel_case_types
class _Reg_surname1 extends State<Reg_surname1> {
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
                            color: Colors.green,
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
                    ],
                  ),

                  SizedBox(height: 80),
                  Column(
                    children: [
                      Text('What is your surname?',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)
                      ),
                      SizedBox(height:70),
                      // Expanded(
                      InkWell(
                        onTap: () {
                        },
                        child: Container(
                            width: 320,
                            height: 60,
                            padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                            child:Text('Touch here to input surname',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.grey[400],
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal  )),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[400],
                                    width: 2
                                ))
                        ),
                      ),

                        Container(
                            width: 250,
                            height: 60,
                            margin: EdgeInsets.fromLTRB(10, 90, 10, 10),
                            padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                            child:Text('Next',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal  )),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2
                                ))
                        ),


                      // ),

                    ],

                  )
                ]
            )
        )

    );
  }
}
