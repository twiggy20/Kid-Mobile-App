import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Home.dart';
import 'package:mobile_app/utils/size_config.dart';

// ignore: camel_case_types
class sign_in_2 extends StatefulWidget {
  //const sign_in({Key? key}) : super(key: key);
  static const String id = "signIn2";

  @override
  _sign_in_2State createState() => _sign_in_2State();
}

// ignore: camel_case_types
class _sign_in_2State extends State<sign_in_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
              children: [
             Container(
               width: SizeConfig.screenWidth,
               height: 70,
              margin: EdgeInsets.fromLTRB(0, 40, 10, 10),
              padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
              child:Text('Sign in',
                  textAlign: TextAlign.center,
                  style: TextStyle(color:  Color(0xFF002255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold  )),

               ),

                SizedBox(height:60),
                SingleChildScrollView(
                  child:InkWell(
                    onTap: (){
                      Navigator.pushNamed(context,home.id);
                    },
                    child:ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 280),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText:'Touch here to input your  ID',
                          hintStyle: TextStyle(color: Colors.grey,  fontSize: 20,
                              fontWeight: FontWeight.normal),
                          fillColor:  Colors.grey[100],
                          // filled: true,
                          enabledBorder:OutlineInputBorder(
                              borderSide:BorderSide(color:Colors.grey, )
                          ),
                          focusedBorder:OutlineInputBorder(
                              borderSide:BorderSide(color:Colors.black, width:2)
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:80),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, home.id);
              },
                child:Container(
                    width: 250,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                    padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                    child:Text('Sign in',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal  )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(30)
                           ),
                        border: Border.all(
                            color: Colors.black,
                            width: 2
                        ))
                ),
            ),
              ],
            )
        )
    );
  }
}
