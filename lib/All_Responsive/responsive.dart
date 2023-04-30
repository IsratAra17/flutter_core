import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aspect Ratio"),
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        color: Colors.lightGreen,
        alignment: Alignment.center,

        child: AspectRatio(
          aspectRatio: 16/9,

          child: Container(
            color: Colors.orange,
          ),
        )
        ,
      ),
    );
  }
}
