import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app/Pages/Rewards.dart';
import 'package:mobile_app/locator.dart';
import 'Pages/onboarding/Identity.dart';
import 'package:mobile_app/Pages/Join_Class_ID.dart';
import 'Pages/onboarding/Status.dart';
import 'package:mobile_app/Pages/Loading.dart';
import 'package:mobile_app/Pages/Home.dart';
import 'Pages/classes/Classroom_Lesson.dart';
import 'Pages/classes/Classroom_Activity.dart';
import 'package:mobile_app/Pages/Reg_FName.dart';
import 'Pages/onboarding/FirstNameView.dart';
import 'package:mobile_app/Pages/Reg_Surname1.dart';
import 'Pages/onboarding/SurnameView.dart';
import 'package:mobile_app/Pages/Reg_Age1.dart';
import 'Pages/onboarding/AgeView.dart';
import 'package:mobile_app/Pages/Reg_Class1.dart';
import 'Pages/onboarding/ClassView.dart';
import 'Pages/onboarding/GenderView.dart';
import 'Pages/onboarding/Registered.dart';
import 'package:mobile_app/Pages/Join_ClassName.dart';
import 'package:mobile_app/Pages/Join_Class.dart';
import 'package:mobile_app/Pages/Sign_In.dart';
import 'package:mobile_app/Pages/Sign_In_2.dart';
import 'package:mobile_app/Pages/Sign_In_Go.dart';
import 'package:mobile_app/Pages/Note_ID.dart';

import 'Pages/classes/classes.dart';

//void main()  =>runApp(MaterialApp(
// initialRoute:'home',
// routes: {

// },
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

/// A StatelessWidget class to hold basic details and routes of my application
class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kid_app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF1A60CD),
      ),
      initialRoute: Identity.id,
      routes: {
        Identity.id: (context) => Identity(),
        home.id: (context) => home(),
        Status.id: (context) => Status(),
        Reg_fname.id: (context) => Reg_fname(),
        FirstNameView.id: (context) => FirstNameView(),
        Reg_surname1.id: (context) => Reg_surname1(),
        SurnameView.id: (context) => SurnameView(),
        Reg_age1.id: (context) => Reg_age1(),
        AgeView.id: (context) => AgeView(),
        Reg_class1.id: (context) => Reg_class1(),
        ClassView.id: (context) => ClassView(),
        GenderView.id: (context) => GenderView(),
        Registered.id: (context) => Registered(),
        Note_ID.id: (context) => Note_ID(),
        // classroom.id: (context) => classroom(),
        classroom_Act.id: (context) => classroom_Act(),
        join_class_ID.id: (context) => join_class_ID(),
        join_class.id: (context) => join_class(),
        SignIn.id: (context) => SignIn(),
        sign_in_2.id: (context) => sign_in_2(),
        sign_in_go.id: (context) => sign_in_go(),
        Awards.id: (context) => Awards(),
        Classes.id: (context) => Classes(),
      },
    );
  }
}
