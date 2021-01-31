import 'package:flutter/widgets.dart';
import 'package:myFirstApp/screens/forgot_password/forgot_password_screen.dart';
import 'package:myFirstApp/screens/intro/splash.dart';
import 'package:myFirstApp/screens/intro/welcomeScreen.dart';
import 'package:myFirstApp/screens/login_success/login_success_screen.dart';
import 'package:myFirstApp/screens/sign_in/sign_in_screen.dart';
import 'package:myFirstApp/screens/visit/visit_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  // Intro
  Splash.routeName:(context)=> Splash(),
  WelcomeScreen.routeName:(context)=> WelcomeScreen(),
  // Auth
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  VisitScreen.routeName: (context) => VisitScreen()
};
