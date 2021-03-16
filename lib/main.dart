import 'package:flutter/material.dart';

import 'package:widgets/src/pages/AlertsPage.dart';
import 'package:widgets/src/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'alerts': (BuildContext context) => AlertsPage()
      }
    );
  }
}
