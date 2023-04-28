import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alert_Dialog extends StatefulWidget {
  const Alert_Dialog({Key? key}) : super(key: key);

  @override
  State<Alert_Dialog> createState() => _Alert_DialogState();
}

class _Alert_DialogState extends State<Alert_Dialog> {
  @override
  MySnackBar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  MyAlertDialog(context)
  {
    return showDialog(context: context,
        builder: (BuildContext context)
    {
      return Expanded(
          child: AlertDialog(
            title: Text("Alert !"),
            content: Text("Do you want to delete"),
            actions: [
              TextButton(onPressed: (){
                MySnackBar("Delete Success",context);
                Navigator.of(context).pop();
              }, child: Text("Yes")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
            ],
          )
      );
    }
    );
  }
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Center(
          child: ElevatedButton(child: Text("click me"),onPressed: (){
            MyAlertDialog(context);},),
        )
    );

  }



}

