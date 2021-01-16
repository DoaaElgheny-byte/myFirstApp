import 'package:flutter/material.dart';
import 'package:myFirstApp/routes.dart';
import 'package:myFirstApp/screens/splash/splash_screen.dart';
import 'package:myFirstApp/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
