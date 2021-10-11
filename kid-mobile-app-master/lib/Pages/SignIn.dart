import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Home.dart';
import 'package:mobile_app/locator.dart';
import 'package:mobile_app/model/student.dart';
import 'package:mobile_app/services/student_service.dart';
import 'package:mobile_app/utils/size_config.dart';

// ignore: camel_case_types
class SignIn extends StatefulWidget {
  //const sign_in({Key? key}) : super(key: key);
  static const String id = "signIn2";

  @override
  _SignInState createState() => _SignInState();
}

// ignore: camel_case_types
class _SignInState extends State<SignIn> {

  final StudentService _studentService = locator<StudentService>();
  TextEditingController _userIdController = TextEditingController();

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
                        controller: _userIdController,
                      ),
                    ),
                  ),
                ),
                SizedBox(height:80),
            InkWell(
              onTap: () async {
                Student student = await _studentService.getStudent(_userIdController.text);
                if (student != null) {
                  Navigator.pushNamedAndRemoveUntil(context, home.id, (_) => false);
                }
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
