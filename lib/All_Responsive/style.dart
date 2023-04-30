import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle HeadLine(context)
{
  var width=MediaQuery.of(context).size.width;
  if(width<700)
  //mobile
    {
      return TextStyle(
        color: Colors.pink,
        fontSize: 34,

      );
    }
  else{
    //web
    return TextStyle(
      color: Colors.green,
      fontSize: 65,
    );
  }
}