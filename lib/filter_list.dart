import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BuildFilterList extends StatefulWidget {
  @override
  _BuildFilterListState createState() => _BuildFilterListState();
}

class _BuildFilterListState extends State<BuildFilterList> {
  @override
  Widget build(BuildContext context) {
    return Container(

  child:ListView.builder(
    itemCount: 6,
    itemBuilder: (context , index){
      return InkWell(

      );


    },
  ) 
      
    );
  }
}