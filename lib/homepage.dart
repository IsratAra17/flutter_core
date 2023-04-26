import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  MySnackBar(message,context)
  {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        elevation: 20,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){MySnackBar("I am phone", context);}, icon: Icon(Icons.phone)),
          IconButton(onPressed: (){MySnackBar("I am menu", context);}, icon: Icon(Icons.menu)),
          IconButton(onPressed: (){MySnackBar("I am message", context);}, icon: Icon(Icons.message_rounded))

        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child:Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){MySnackBar("Floating button Clicked", context);},

      ),

      
    );
  }
}
