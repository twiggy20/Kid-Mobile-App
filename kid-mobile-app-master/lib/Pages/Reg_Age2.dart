import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reg_age2 extends StatefulWidget {
  //const Reg_age2({Key? key}) : super(key: key);
  static const String id = "reg_age2";

  @override
  _Reg_age2State createState() => _Reg_age2State();
}

class _Reg_age2State extends State<Reg_age2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:

        SafeArea(child:
        Column(
            children:[
              Row(
                children: [
                  Container(
                    width: 77,
                    height: 5,
                    margin: EdgeInsets.fromLTRB(2, 15, 0, 70),
                    padding: EdgeInsets.fromLTRB(1, 15, 0, 10),
                    decoration: BoxDecoration(
                        color: Colors.green,

                        border: Border.all(
                            color: Colors.green,
                            width: 2
                        )),
                  ),
                  Container(
                    width: 77,
                    height: 5,
                    margin: EdgeInsets.fromLTRB(3, 15, 0, 70),
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    decoration: BoxDecoration(
                        color: Colors.green,

                        border: Border.all(
                            color: Colors.green,
                            width: 2
                        )),
                  ),
                  Container(
                    width: 77,
                    height: 5,
                    margin: EdgeInsets.fromLTRB(3, 15, 0, 70),
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    decoration: BoxDecoration(
                        color: Colors.green,

                        border: Border.all(
                            color: Colors.green,
                            width: 2
                        )),
                  ),
                  Container(
                    width: 77,
                    height: 5,
                    margin: EdgeInsets.fromLTRB(3, 15, 0, 70),
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    decoration: BoxDecoration(
                        color: Colors.grey,

                        border: Border.all(
                            color: Colors.grey,
                            width: 2
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Text('How old are you?',
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
                      child:Text('',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w300  )),
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
                  Container(
                      width: 250,
                      height: 60,
                      margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                      padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                      child:Text('Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal  )),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.black,
                              width: 2
                          ))
                  )
                ],

              )
            ]
        )
        )
    );
  }
}
