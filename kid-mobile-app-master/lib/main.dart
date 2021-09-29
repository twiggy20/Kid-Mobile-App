import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app/Pages/Awards.dart';
import 'package:mobile_app/Pages/Identity.dart';
import 'package:mobile_app/Pages/Join_Class_Code.dart';
import 'package:mobile_app/Pages/Reg_Surname1.dart';
import 'package:mobile_app/Pages/Status.dart';
import 'package:mobile_app/Pages/Loading.dart';
import 'package:mobile_app/Pages/Home.dart';
import 'Pages/classes/Classroom_Lesson.dart';
import 'Pages/classes/Classroom_Activity.dart';
import 'package:mobile_app/Pages/Reg_FName.dart';
import 'package:mobile_app/Pages/Reg_FName2.dart';
import 'package:mobile_app/Pages/Reg_Surname1.dart';
import 'package:mobile_app/Pages/Reg_Surname2.dart';
import 'package:mobile_app/Pages/Reg_Age1.dart';
import 'package:mobile_app/Pages/Reg_Age2.dart';
import 'package:mobile_app/Pages/Reg_Class1.dart';
import 'package:mobile_app/Pages/Reg_Class2.dart';
import 'package:mobile_app/Pages/Reg_Gender.dart';
import 'package:mobile_app/Pages/Registered.dart';
import 'package:mobile_app/Pages/Join_ClassName.dart';
import 'package:mobile_app/Pages/Join_Class.dart';
import 'package:mobile_app/Pages/Sign_In.dart';
import 'package:mobile_app/Pages/Sign_In_2.dart';
import 'package:mobile_app/Pages/Sign_In_Go.dart';

import 'Pages/classes/classes.dart';
//void main()  =>runApp(MaterialApp(
// initialRoute:'home',
// routes: {

// },
void main() {
 WidgetsFlutterBinding.ensureInitialized();
 SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
 ]);
 runApp(MyApp());
}

/// A StatelessWidget class to hold basic details and routes of my application
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return MaterialApp(
   title: 'kid_app',
   debugShowCheckedModeBanner: false,
   theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFF1A60CD),
   ),

   initialRoute:  Identity.id,
   routes: {
    Identity.id: (context) => Identity(),
    home.id: (context)=>home(),
    Status.id: (context)=>Status(),
    Reg_fname.id: (context)=>Reg_fname(),
    Reg_fname2.id: (context)=>Reg_fname2(),
    Reg_surname1.id: (context)=>Reg_surname1(),
    Reg_age1.id: (context)=>Reg_age1(),
    Reg_class1.id: (context)=>Reg_class1(),
    Reg_gender.id: (context)=>Reg_gender(),
    Registered.id: (context)=>Registered(),
    classroom.id: (context)=>classroom(),
    classroom_Act.id: (context)=>classroom_Act(),
    join_class_code.id: (context)=>join_class_code(),
    join_class.id: (context)=>join_class(),
    SignIn.id: (context)=>SignIn(),
    sign_in_2.id: (context)=>sign_in_2(),
    sign_in_go.id: (context)=>sign_in_go(),
    Awards.id: (context)=>Awards(),
    Classes.id: (context)=>Classes(),
   },
  );
 }
}