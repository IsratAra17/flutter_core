import 'package:flutter/material.dart';
import 'package:flutter_core/All_Responsive/mediaQuery.dart';
import 'package:flutter_core/All_Responsive/responsive.dart';
import 'package:flutter_core/Navigator/Navmain.dart';
import 'package:flutter_core/homepage.dart';
import 'package:flutter_core/listviewBuilder.dart';
import 'package:flutter_core/simple_form.dart';
import 'package:flutter_core/TabVieW_Bar_fragment/tabbar_tabView_fragment.dart';

import 'aleart_dialog.dart';
import 'all_buttons.dart';
import 'gridViewBuilder.dart';

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
      home: Meadia_Query()
    );
  }
}

