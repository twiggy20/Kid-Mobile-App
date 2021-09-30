import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_app/utils/size_config.dart';

class home extends StatefulWidget {
  static const String id = "home";
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          // ignore: deprecated_member_use
          child: FlatButton(
            onPressed: (){},
            child: Container(
              child: Image.asset("assets/icons/Vector.png",width:10,height:30,fit: BoxFit.contain,),
            ),
          ),
        ),
        title:Text(
          'Welcome',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF303D50),
              fontSize: 20,
              fontWeight: FontWeight.w900
          ),
        ),
        centerTitle: true,
        actions: [
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: (){},
            child: Container(
              child: Image.asset("assets/icons/Group (7).png",width:18,height:18,fit: BoxFit.contain,),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        padding: EdgeInsets.only(left: 14,right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF2C94C),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                padding:EdgeInsets.only(top: 19,bottom: 19) ,
                width: SizeConfig.screenWidth,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Check for awards here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 24.56,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'You have no awards',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 12.76,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Text(
              "Recent classes",
              style: TextStyle(
                  color: Color(0xFF757575),
                  fontSize:18,
                  fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Container(
                padding:EdgeInsets.only(top: 19,bottom: 19) ,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                    color: Color(0xFF27AE60),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 30,),
                      Image.asset("assets/icons/profile.png",fit: BoxFit.contain,width:34.64,height:39.87,),
                      SizedBox(width: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mr John',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF303D50),
                                fontSize: 15.69,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Science..1 hour ago',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 12.76,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 36,),
            Text(
              "Class history",
              style: TextStyle(
                  color: Color(0xFF757575),
                  fontSize:18,
                  fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height: 5,),
                buildContainer("You have no class history yet"),

          ],
        ),
      ),
    );
  }

  Widget buildContainer(String text){
    return Container(
      width:175,
      height: 129,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset.zero,
          )
        ]
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF000000),
              fontSize:18,
              fontWeight: FontWeight.w200
          ),
        ),
      ),
    );
  }
}
