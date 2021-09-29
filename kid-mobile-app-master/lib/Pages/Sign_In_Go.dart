import 'package:flutter/material.dart';

// ignore: camel_case_types
class sign_in_go extends StatefulWidget {
  //const sign_in({Key? key}) : super(key: key);
  static const String id = "signIn_go";

  @override
  _sign_in_goState createState() => _sign_in_goState();
}

// ignore: camel_case_types
class _sign_in_goState extends State<sign_in_go> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(
            child:
            Column(
              children: [
                Row(
                    children: [
                      Container(
                        width: 157,
                        height: 5,
                        margin: EdgeInsets.fromLTRB(2, 15, 0, 30),
                        padding: EdgeInsets.fromLTRB(1, 15, 0, 10),
                        decoration: BoxDecoration(
                            color: Colors.green,

                            border: Border.all(
                                color: Colors.green,
                                width: 2
                            )),
                      ),
                      Container(
                        width: 157,
                        height: 5,
                        margin: EdgeInsets.fromLTRB(2, 15, 0, 30),
                        padding: EdgeInsets.fromLTRB(1, 15, 0, 10),
                        decoration: BoxDecoration(
                            color: Colors.green,

                            border: Border.all(
                                color: Colors.green,
                                width: 2
                            )),
                      ),

                    ]
                ),
                Text('Sign in',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.green,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)
                ),
                Container(
                    width: 260,
                    height: 70,
                    margin: EdgeInsets.fromLTRB(20, 40, 5, 40),
                    padding: EdgeInsets.fromLTRB(8, 20, 10, 10),
                    child:Text('Touch here to input firstname',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w200  )),
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
                    width: 260,
                    height: 70,
                    margin: EdgeInsets.fromLTRB(20, 10, 5, 40),
                    padding: EdgeInsets.fromLTRB(8, 20, 10, 10),
                    child:Text('Touch here to input surname',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w200  )),
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
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                    padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                    child:Text('Continue',
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

              ],
            )
        )
    );
  }
}
