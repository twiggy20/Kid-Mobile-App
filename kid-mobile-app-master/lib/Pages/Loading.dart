import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class loading extends StatefulWidget {
  static const String id = "load";
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Text('loading....'),
    );
  }
}
