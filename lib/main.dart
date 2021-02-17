import 'package:app_components/src/app_routes.dart';
import 'package:app_components/src/pages/alert_page.dart';
import 'package:app_components/src/pages/home_page.dart';
import 'package:flutter/material.dart';
 

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings setting){
        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },

    );
  }
}