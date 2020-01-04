import 'package:flutter/material.dart';

import 'package:management/pages/details.dart';
import 'package:management/strings.dart';
import 'home.dart';

void main() => runApp(MyApp());
Widget home= Home();
Widget details=Details();
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Management',
        theme: ThemeData(
          primaryColor:background,
        ),
        routes: <String , WidgetBuilder>{

          '/details':(BuildContext context) => details,
        },

       
        home:home);
  }
}
