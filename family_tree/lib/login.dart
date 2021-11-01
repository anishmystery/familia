import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'sizes.dart';
import 'strings.dart';
import 'styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailValidator = MultiValidator([
    RequiredValidator(errorText: '* Required'),
    EmailValidator(errorText: 'Invalid email id')
  ]);

  final _passwordValidator = MultiValidator([
    RequiredValidator(errorText: '* Required'),
    MinLengthValidator(8,
        errorText: 'Password must be at least 8 characters long'),
  ]);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        getProportionateScreenWidth(50),
                        getProportionateScreenHeight(50),
                        getProportionateScreenWidth(50),
                        0),
                    child: TextFormField(
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
                        errorBorder: OutlineInputBorder(
                          borderSide: focusedOutlinedBorderTheme,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: focusedOutlinedBorderTheme,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Email Id',
                        labelStyle: textFieldLabelStyle,
                      ),
                      validator: _emailValidator,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        getProportionateScreenWidth(50),
                        getProportionateScreenHeight(20),
                        getProportionateScreenWidth(50),
                        0),
                    child: TextFormField(
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
                        errorBorder: OutlineInputBorder(
                          borderSide: focusedOutlinedBorderTheme,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: focusedOutlinedBorderTheme,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: passwordText,
                        labelStyle: textFieldLabelStyle,
                      ),
                      validator: _passwordValidator,
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
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Signing In')),
                            );
                          }
                        },
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
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Ubuntu',
                            color: textColor),
                        children: <TextSpan>[
                          TextSpan(text: 'Don\'t have an account yet?'),
                          TextSpan(
                            text: ' Sign Up',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Ubuntu',
                                color: primaryColor,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/signup');
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
