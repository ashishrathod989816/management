import 'package:flutter/material.dart';
import 'package:management/pages/first_tab.dart';
import 'package:management/pages/second_tab.dart';
import 'package:management/pages/third_tab.dart';

class Tabs extends StatefulWidget {
  @override
  TabState createState() => TabState();
}

// SingleTickerProviderStateMixin is used for animation
class TabState extends State<Tabs> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[FirstTab(), SecondTab(), ThirdTab()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.black,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          unselectedLabelColor: Colors.black87,
          indicatorPadding: EdgeInsets.all(0),
          indicatorColor: Colors.transparent,
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.person,
                
                  )),
              text: "Account",
            ),
            Tab(
              icon: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.event)),
              text: "Event",
            ),
            Tab(
              icon: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.dashboard)),
              text: 'DashBoard',
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}
