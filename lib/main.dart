import 'package:flutter/material.dart';
import 'package:flutter_core/homepage.dart';
import 'package:flutter_core/simple_form.dart';

import 'aleart_dialog.dart';
import 'all_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      home: Simple_Form(),
    );
  }
}

