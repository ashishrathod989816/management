  import 'package:flutter/material.dart';
import 'package:management/strings.dart';


class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
     body: Center(
       child: Text("Accont",style:TextStyle(color:txtColor)),
     ),
    );
  }
}