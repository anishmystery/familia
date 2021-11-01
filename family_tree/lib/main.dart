import 'package:familia/login.dart';

import 'signup.dart';
import 'styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Familia',
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        scaffoldBackgroundColor: backgroundColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: primaryColor,
            textStyle: buttonTextStyle,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}
