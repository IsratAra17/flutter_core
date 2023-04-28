import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_gridVBuilder extends StatelessWidget {
  My_gridVBuilder({Key? key}) : super(key: key);

  @override
  mySnackBar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }


   var myList=[
    {"img":"https://shrtco.de/qkc1U8","title":"1st"},
    {"img":"https://shrtco.de/qkc1U8","title":"2nd"},
     {"img":"https://shrtco.de/qkc1U8","title":"4th"},
    {"img":"https://shrtco.de/qkc1U8","title":"5th"},
    {"img":"https://shrtco.de/qkc1U8","title":"6th"},
    {"img":"https://shrtco.de/qkc1U8","title":"7th"},
     {"img":"https://shrtco.de/qkc1U8","title":"8th"},
    {"img":"https://shrtco.de/qkc1U8","title":"9th"},
    {"img":"https://shrtco.de/qkc1U8","title":"10th"},

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Buildure"),),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          childAspectRatio: 1.2
        ),
        itemCount: myList.length,
          itemBuilder:(context,index){
          return GestureDetector(
            onTap: (){
              mySnackBar(context,myList[index]['title']);},
            child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 220,
                child: Image.network(myList[index]['img']!, fit: BoxFit.fill)
            ),
          );
          },
      )
    );
  }
}
