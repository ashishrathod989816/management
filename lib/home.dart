

import 'package:flutter/material.dart';

import 'package:management/tabs.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _locations = ['Paris', 'New York', 'Berlin', 'Moscow'];
  var listitems = [
    'fastfood',
    'hotel',
    'sport_esports',
  ];
  String _selectedlocation = 'choose';

  String _radioValue; //Initial definition of radio button value
  String choice;
  @override
  void initState() {
    setState(() {
      _radioValue = "one";
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: DropdownButton(
                underline: Container(),
                hint: Text(
                  _selectedlocation,
                  style: TextStyle(color: Colors.white),
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedlocation = newValue;
                  });
                },
                items: _locations.map((String location) {
                  return new DropdownMenuItem<String>(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'seach',
                  onPressed: () {
                    // handle the press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.tune),
                  tooltip: 'filer',
                  onPressed: () {
                    // handle the press
                  },
                )
              ],
            )
          ],
        ),
      ),
      body: Tabs(),
    );
    
  }
  
}
