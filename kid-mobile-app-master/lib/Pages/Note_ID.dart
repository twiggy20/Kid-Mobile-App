import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Sign_In.dart';
import 'package:mobile_app/utils/size_config.dart';
class Note_ID extends StatefulWidget {
  static const String id = "Note_ID";
  //const join_class({Key? key}) : super(key: key);

  @override
  _Note_IDState createState() => _Note_IDState();
}

class _Note_IDState extends State<Note_ID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child:
            Column(
                children:[
                  Column(
                      children: [
                        SizedBox(height: 70),
                         Container(
                           width: SizeConfig.screenWidth,
                            height: 100,
                            padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                            child:Text('Write down your ID now, you will need it later',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xFF002255),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold  )),

                        ),
                      ]
                  ),
                  SizedBox(height: 70),
        InkWell(
            onTap: () {
              Navigator.pushNamed(context, SignIn.id);
            },
                 child: Container(
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                      padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                      child:Text('Submit',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal  )),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2
                          ))
                  ),
        ),
                ]
            )
        )
    );
  }
}
