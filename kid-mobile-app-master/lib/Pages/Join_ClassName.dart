import 'package:flutter/material.dart';
class join_class_name extends StatefulWidget {
  static const String id = "join_class";
  //const join_class({Key? key}) : super(key: key);

  @override
  _join_class_nameState createState() => _join_class_nameState();
}

class _join_class_nameState extends State<join_class_name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
            child:
            Column(
              children:[
            Row(
            children: [
            Container(
            width: 104,
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
              width: 104,
              height: 5,
              margin: EdgeInsets.fromLTRB(2, 15, 0, 70),
              padding: EdgeInsets.fromLTRB(1, 15, 0, 10),
              decoration: BoxDecoration(
                  color: Colors.grey,

                  border: Border.all(
                      color: Colors.grey,
                      width: 2
                  )),
            ),
              Container(
                width: 104,
                height: 5,
                margin: EdgeInsets.fromLTRB(2, 15, 0, 70),
                padding: EdgeInsets.fromLTRB(1, 15, 0, 10),
                decoration: BoxDecoration(
                    color: Colors.grey,

                    border: Border.all(
                        color: Colors.grey,
                        width: 2
                    )),
              )
            ]
          ),
        Column(
            children: [
              Text('Join a class',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
              ),
            ]
        ),
                Container(
                    width: 260,
                    height: 70,
                    margin: EdgeInsets.fromLTRB(10, 60, 5, 40),
                    padding: EdgeInsets.fromLTRB(8, 20, 10, 10),
                    child:Text('Touch here to input class code',
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
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                    padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                    child:Text('Next',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal  )),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                        border: Border.all(
                            color: Colors.grey,
                            width: 2
                        ))
                ),
                Container(
                    width: 250,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    child:Text('Join class later',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal  )),
                    decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                        border: Border.all(
                            color: Colors.indigo.shade900,
                            width: 2
                        ))
                )
           ]
        )
      )
    );
  }
}
