import 'package:flutter/material.dart';
import 'package:flutter_core/Navigator/Activity1.dart';

class Nav_main extends StatelessWidget {
  const Nav_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("One page to another route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Activity1()));
          },
          child: Text("go to next page"),
        ),
      ),
    );
  }
}
