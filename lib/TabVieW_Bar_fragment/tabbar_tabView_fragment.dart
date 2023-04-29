import 'package:flutter/material.dart';
import 'package:flutter_core/TabVieW_Bar_fragment/Fragment/ContactFragment.dart';
import 'package:flutter_core/TabVieW_Bar_fragment/Fragment/HomeFragment.dart';
import 'package:flutter_core/TabVieW_Bar_fragment/Fragment/PersonFragment.dart';

class Tab_Bar_TV_fragment extends StatelessWidget {
  const Tab_Bar_TV_fragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(title: Text("TAB Bar Tab View Fragment 31"),

        bottom: TabBar(
          isScrollable: true,
          tabs: [
            Tab(icon: Icon(Icons.home),text: 'Home',),
            Tab(icon: Icon(Icons.search),text: 'search',),
            Tab(icon: Icon(Icons.settings),text: 'settings',),
            Tab(icon: Icon(Icons.email),text: 'email',),
            Tab(icon: Icon(Icons.contact_mail),text: 'contact',),
            Tab(icon: Icon(Icons.person),text: 'Person',),
            Tab(icon: Icon(Icons.access_alarm),text: 'Alarm',),
            Tab(icon: Icon(Icons.account_balance),text: 'balance',),



          ],

        ),
        ),


        body: TabBarView(
          children: [
            HomeFragment(),
            ContactFragment(),
            PersonFragment(),
            Text("3"),
            Text("4"),
            Text("5"),
            Text("6"),
            Text("7"),
            Text("8"),

          ],

        ),
      ),

    );
  }
}
