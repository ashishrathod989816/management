import 'package:flutter/material.dart';
import 'package:management/main_list.dart';
import 'package:management/pages/required/category_list_item.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  var select=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Flexible(flex: 2, child: categories(context)),
      Flexible(
        flex: 7,
        child: BuildMainList(),
      )
    ]));
  }

  Widget categories(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryListItem(
            categoryIcon: Icons.fastfood,
            categoryName: "Burgers",
            availability: 12,

          ),

           CategoryListItem(
            categoryIcon: Icons.restaurant,
            categoryName: "Burgers",
            availability: 12,

          ),
           CategoryListItem(
            categoryIcon: Icons.hotel,
            categoryName: "Burgers",
            availability: 12,

          ),
           CategoryListItem(
            categoryIcon: Icons.bug_report,
            categoryName: "Burgers",
            availability: 12,
     
          ),
           CategoryListItem(
            categoryIcon: Icons.fastfood,
            categoryName: "Burgers",
            availability: 12,
           
          ),

           CategoryListItem(
            categoryIcon: Icons.restaurant,
            categoryName: "Burgers",
            availability: 12,
        
          ),
           CategoryListItem(
            categoryIcon: Icons.hotel,
            categoryName: "Burgers",
            availability: 12,

          ),
           CategoryListItem(
            categoryIcon: Icons.bug_report,
            categoryName: "Burgers",
            availability: 12,
          
          ),
        Checkbox(
          activeColor:Colors.transparent,
          value: select,
          onChanged: (val){
            setState(() {
              select=val;
            });

          },
        )
       
        ],
      ),
    );
  }
}
