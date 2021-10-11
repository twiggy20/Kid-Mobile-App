import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Home.dart';
import 'onboarding/FirstNameView.dart';
import 'package:mobile_app/utils/constant.dart';
import 'package:mobile_app/utils/size_config.dart';
import 'package:mobile_app/Pages/SignIn.dart';


class SignIn2 extends StatefulWidget {
  static const String id = "signIn";

  @override
  _SignIn2State createState() => _SignIn2State();
}

class _SignIn2State extends State<SignIn2> {

  /// A [GlobalKey] to hold the form state of my form widget for form validation
  final _formKey = GlobalKey<FormState>();

  /// A [TextEditingController] to control the input text for the user's email
  TextEditingController _userIdController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's password
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: SizeConfig.screenWidth,
          padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Text(
                'Sign in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF002255),
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Roboto",
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      _buildSignIn(),
                      SizedBox(height: 23,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context,home.id );

                        },
                        child: Container(
                          padding: EdgeInsets.only(top:9,bottom:9 ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(Radius.circular(36))
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Roboto',
                                fontSize:20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, FirstNameView.id );
                        },
                        child: Container(
                          padding: EdgeInsets.only(top:9,bottom:9 ),
                          decoration: BoxDecoration(
                              color: Color(0xFF002255),
                              borderRadius: BorderRadius.all(Radius.circular(36))
                          ),
                          child: Center(
                            child: Text(
                              "I don't have ID",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //functions for holding form in a dynamic format
  Widget _buildSignIn() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width: SizeConfig.screenWidth,
                child: TextFormField(
                  controller: _userIdController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value){
                    if(value.isEmpty){
                      return 'Enter your ID';
                    }
                    return null;
                  },
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    fontSize: 21.56,
                    color: Color(0xFF332D2D),
                  ),
                  decoration:kFieldDecoration.copyWith(
                      hintText: 'Input your ID to continue',
                      hintStyle:TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                        fontSize: 21.56,
                        color: Color(0xFF989898),
                      )
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 70,),

        ],
      ),
    );
  }
}
