import 'package:flutter/material.dart';
import 'package:mobile_app/utils/constant.dart';
import 'package:mobile_app/utils/size_config.dart';
import 'package:mobile_app/Pages/Sign_In_2.dart';


class SignIn extends StatefulWidget {
  static const String id = "signIn";

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

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
          padding: EdgeInsets.fromLTRB(50, 50, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Text(
                'Sign in',
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
                      SizedBox(height: 50),
                      _buildSignIn(),
                      SizedBox(height: 23,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context,sign_in_2.id );

                        },
                        child: Container(
                          padding: EdgeInsets.only(top:9,bottom:9 ),
                          decoration: BoxDecoration(
                              color: Color(0xFFC8C23E),
                              borderRadius: BorderRadius.all(Radius.circular(36))
                          ),
                          child: Center(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                                fontSize:24.56,
                                color: Color(0xFF121212).withOpacity(0.9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.only(top:9,bottom:9 ),
                          decoration: BoxDecoration(
                              color: Color(0xFF121212),
                              borderRadius: BorderRadius.all(Radius.circular(36))
                          ),
                          child: Center(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                                fontSize: 24.56,
                                color: Color(0xFFFFFFFF),
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
              Text(
                "User ID",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontSize: 21.56,
                  color: Color(0xFF332D2D),
                ),
              ),
              SizedBox(height: 13,),
              Container(
                width: SizeConfig.screenWidth,
                child: TextFormField(
                  controller: _userIdController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value){
                    if(value.isEmpty){
                      return 'Enter your email address';
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
                      hintText: 'Input username/email',
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
          SizedBox(height: 24,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  fontSize: 21.56,
                  color: Color(0xFF332D2D),
                ),
              ),
              SizedBox(height: 13,),
              Container(
                width: SizeConfig.screenWidth,
                child: TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value){
                    if(value.isEmpty){
                      return 'Enter your email address';
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
                      hintText: 'Input password here',
                      hintStyle:TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Roboto',
                        fontSize: 21.56,
                        color: Color(0xFF989898),
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed:(){},
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    //decoration: TextDecoration.underline,
                    fontSize: 18,
                    color: Color(0xFF002255),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
