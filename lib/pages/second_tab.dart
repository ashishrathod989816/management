import 'package:flutter/material.dart';
import 'package:management/main_list.dart';
import 'package:management/pages/required/category_list_item.dart';
import 'package:management/strings.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  var select=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
        body: Column(children: <Widget>[
      Flexible(flex: 2, child: categories(context)),
      Flexible(
        flex: 9,
        child: BuildMainList(),
      )
    ]));
  }

  Widget categories(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(0),
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
            categoryName: "Restaurant",
            availability: 12,

          ),
           CategoryListItem(
            categoryIcon: Icons.hotel,
            categoryName: "hotel",
            availability: 12,

          ),
          
           CategoryListItem(
            categoryIcon: Icons.fastfood,
            categoryName: "fastfood",
            availability: 12,
           
          ),

           CategoryListItem(
            categoryIcon: Icons.restaurant,
            categoryName: "Burgers",
            availability: 12,
        
          ),
           CategoryListItem(
            categoryIcon: Icons.hotel,
            categoryName: "hotel",
            availability: 12,

          ),
          
         CategoryListItem(
            categoryIcon: Icons.hotel,
            categoryName: "hotel",
            availability: 12,

          ),
       
        ],
      ),
    );
  }
}
