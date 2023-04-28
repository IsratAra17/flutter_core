import 'package:flutter/material.dart';

class Btn_design extends StatefulWidget {
  const Btn_design({Key? key}) : super(key: key);

  @override
  State<Btn_design> createState() => _Btn_designState();
}

class _Btn_designState extends State<Btn_design> {
  MySnackBar(message,context)
  {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message),)
    );
  }
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
        )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){MySnackBar("I am Text Button",context);}, child: Text('Text Button')),
          ElevatedButton(onPressed: (){MySnackBar("I am Elevated Button",context);}, child: Text('Elevated Button'),style: buttonStyle,),
          OutlinedButton(onPressed: (){MySnackBar("I am Outline Button",context);}, child: Text('Outline Button')),
        ],
      ),
    );

  }



}