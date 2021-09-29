import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Join_ClassName.dart';
import 'package:mobile_app/utils/constant.dart';
import 'package:mobile_app/utils/size_config.dart';


class join_class extends StatefulWidget {
  static const String id = "join_class";
  //const join_class({Key? key}) : super(key: key);

  @override
  _join_classState createState() => _join_classState();
}

class _join_classState extends State<join_class> {

  /// A [GlobalKey] to hold the form state of my form widget for form validation
  final _formKey = GlobalKey<FormState>();

  /// A [TextEditingController] to control the input text for the user's email
  TextEditingController _joinClassController = TextEditingController();

  @override
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  SizedBox(height:20,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Color(0xFF3EC8AF),
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Color(0xFFDADADA),
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Color(0xFFDADADA),
                          ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Color(0xFFDADADA),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 33,),
                  Container(
                    padding: EdgeInsets.only(left:24 , right: 24),
                    child: Center(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height:40),
                            Text(
                                'Join a class',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF3EC8AF),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700
                                )
                            ),
                            SizedBox(height:40),
                            _buildJoinClass(),
                            SizedBox(height:100),
                            Container(
                              padding: EdgeInsets.only(left: 20 , right: 20),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, join_class_name.id);
                                },
                                child: Container(
                                  width: SizeConfig.screenWidth,
                                  padding: EdgeInsets.only(top: 15,bottom: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)
                                    ),
                                  ),
                                  child: Text(
                                        'Continue',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal
                                        )
                                    ),

                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }

  //functions for holding form in a dynamic format
  Widget _buildJoinClass() {
    return Form(
      key: _formKey,
      child: Container(
        width: SizeConfig.screenWidth,
        child: TextFormField(
          controller: _joinClassController,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          validator: (value){
            if(value.isEmpty){
              return 'input class code';
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
              hintText: 'Input class code',
              hintStyle:TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
                fontSize: 21.56,
                color: Color(0xFF989898),
              )
          ),
        ),
      ),
    );
  }

}
