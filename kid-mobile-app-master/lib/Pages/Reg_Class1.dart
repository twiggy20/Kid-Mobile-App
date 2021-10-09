import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onboarding/Registered.dart';
import 'onboarding/GenderView.dart';
import 'package:mobile_app/utils/size_config.dart';

class Reg_class1 extends StatefulWidget {
  //const Reg_class1({Key? key}) : super(key: key);
  static const String id = "reg_class";

  @override
  _Reg_class1State createState() => _Reg_class1State();
}

class _Reg_class1State extends State<Reg_class1> {
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
                                  color: Color(0xFFDADADA),
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
                  Text('What class are you in?',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.indigo.shade900,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)
                  ),
                  Container(
                      width: 260,
                      height: 70,
                      margin: EdgeInsets.fromLTRB(10, 60, 5, 40),
                      padding: EdgeInsets.fromLTRB(8, 20, 10, 10),
                      child:Text('Touch here to select your grade',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.normal  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2
                          ))
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, GenderView.id);
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
