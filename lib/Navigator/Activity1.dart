import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Activity1 extends StatelessWidget {
  const Activity1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Activiry1"),),
      body: Center (child: Text("This is activity1")),

    );
  }
}
