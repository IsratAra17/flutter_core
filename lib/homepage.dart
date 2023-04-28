import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  MySnackBar(message, context) {
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
          IconButton(
              onPressed: () {
                MySnackBar("I am phone", context);
              },
              icon: Icon(Icons.phone)),
          IconButton(
              onPressed: () {
                MySnackBar("I am menu", context);
              },
              icon: Icon(Icons.menu)),
          IconButton(
              onPressed: () {
                MySnackBar("I am message", context);
              },
              icon: Icon(Icons.message_rounded))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          MySnackBar("Floating button Clicked", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.wifi_calling), label: "Call")
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("bottom home", context);
          } else if (index == 1) {
            MySnackBar("bottom home", context);
          } else if (index == 2) {
            MySnackBar("bottom home", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(10),
                child: UserAccountsDrawerHeader(
                  
                    decoration: BoxDecoration(color: Colors.white),
                    accountName: Text("S M Israt Ara",style:TextStyle(color:Colors.green)),
                    accountEmail: Text("smisrataara@gmail.com",style:TextStyle(color:Colors.green)),
currentAccountPicture: Image.network(
"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  onDetailsPressed: (){MySnackBar("profile pressed", context);},
                )),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.location_on)),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.location_on)),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.location_on)),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.location_on)),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(10),
                child: UserAccountsDrawerHeader(

                    decoration: BoxDecoration(color: Colors.white),
                    accountName: Text("S M Israt Ara",style:TextStyle(color:Colors.green)),
                    accountEmail: Text("smisrataara@gmail.com",style:TextStyle(color:Colors.green)),
currentAccountPicture: Image.network(
"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  onDetailsPressed: (){MySnackBar("profile pressed", context);},
                )),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.location_on)),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.location_on)),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.location_on)),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.location_on)),
          ],
        ),
      ),
    );
  }
}
