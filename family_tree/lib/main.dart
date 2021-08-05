import 'sizes.dart';
import 'strings.dart';
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: getProportionateScreenHeight(100),
                bottom: getProportionateScreenHeight(30)),
            child: Image(
              alignment: Alignment.center,
              image: const AssetImage(
                  'assets/images/Familia-removebg-preview.png'),
              width: getProportionateScreenWidth(250),
              height: getProportionateScreenHeight(250),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(
                    getProportionateScreenWidth(50),
                    getProportionateScreenHeight(50),
                    getProportionateScreenWidth(50),
                    0),
                child: TextField(
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: enabledOutlinedBorderTheme,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: focusedOutlinedBorderTheme,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: usernameText,
                    labelStyle: textFieldLabelStyle,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    getProportionateScreenWidth(50),
                    getProportionateScreenHeight(20),
                    getProportionateScreenWidth(50),
                    0),
                child: TextField(
                  cursorColor: primaryColor,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: enabledOutlinedBorderTheme,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: focusedOutlinedBorderTheme,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: passwordText,
                    labelStyle: textFieldLabelStyle,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    0,
                    getProportionateScreenHeight(10),
                    getProportionateScreenWidth(50),
                    0),
                alignment: Alignment.bottomRight,
                child: forgotPasswordText,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    getProportionateScreenWidth(50),
                    getProportionateScreenHeight(50),
                    getProportionateScreenWidth(50),
                    0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: signInText,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(18),
                          vertical: getProportionateScreenHeight(18)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    getProportionateScreenWidth(50),
                    getProportionateScreenHeight(10),
                    getProportionateScreenWidth(50),
                    0),
                child: RichText(
                  text: signUpText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
