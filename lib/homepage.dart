import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        elevation: 20,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded))

        ],
      ),
      
    );
  }
}
