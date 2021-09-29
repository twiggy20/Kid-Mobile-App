import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Reg_Class1.dart';
import 'package:mobile_app/utils/size_config.dart';
class Reg_age1 extends StatefulWidget {
//  const Reg_age1({Key? key}) : super(key: key);
  static const String id = "reg_age";

  @override
  _Reg_age1State createState() => _Reg_age1State();
}

class _Reg_age1State extends State<Reg_age1> {
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
                      SizedBox(width: 7,),
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
                      SizedBox(width: 7,),
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
                      SizedBox(width: 7,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                  color: Color(0xFFBEBEBE),
                                  width: 2
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: 7,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                  color: Color(0xFFBEBEBE),
                                  width: 2
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  Column(
                    children: [
                      Text('How old are you?',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)
                      ),
                      SizedBox(height:70),
                      // Expanded(
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, Reg_class1.id);
                        },
                        child:ConstrainedBox(
                          constraints: BoxConstraints.tightFor(width: 280),
                          child: TextFormField(
                            decoration:InputDecoration(
                              hintText:'touch here to input surname',
                              hintStyle: TextStyle(color: Colors.grey,  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                              fillColor:  Colors.grey[100],
                              filled: true,
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

                      // ),

                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, Reg_class1.id);
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
