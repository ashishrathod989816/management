import 'package:flutter/material.dart';

class CategoryListItem extends StatefulWidget {
  final IconData categoryIcon;
  final String categoryName;
  final int availability;

  @required
  CategoryListItem(
      {this.categoryIcon, this.categoryName, this.availability});

  @override
  _CategoryListItemState createState() => _CategoryListItemState();
}

class _CategoryListItemState extends State<CategoryListItem> {
  var select = false;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(0),
      child: Card(
      
        color: select == true ? Colors.purple : null,
        elevation: 5,
        shape: StadiumBorder(
            // borderRadius: BorderRadius.circular(10.0),
            ),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
                backgroundColor: Colors.grey[100],
                radius: 20,
                child: Icon(
                  widget.categoryIcon,
                  color: Colors.yellowAccent[700],
                )),
            Text(
              widget.categoryName,
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
      onPressed: () {
        setState(() {
          if(select==false)
          select = true;
          else
          select=false;
        });
      },
    );
  }
}
