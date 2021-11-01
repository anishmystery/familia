import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'styles.dart';
import 'sizes.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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

  String password = "";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Form(
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
                  onChanged: (value) => password = value,
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
                    labelText: 'Password',
                    labelStyle: textFieldLabelStyle,
                  ),
                  validator: _passwordValidator,
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
                    labelText: 'Confirm Password',
                    labelStyle: textFieldLabelStyle,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '* Required';
                    } else {
                      return MatchValidator(errorText: 'Passwords don\'t match')
                          .validateMatch(value, password);
                    }
                  },
                ),
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
                          const SnackBar(content: Text('Signing Up')),
                        );
                      }
                    },
                    child: Text('Sign Up'),
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
                        fontSize: 14, fontFamily: 'Ubuntu', color: textColor),
                    children: <TextSpan>[
                      TextSpan(text: 'Already have an account?'),
                      TextSpan(
                          text: ' Sign In',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Ubuntu',
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/');
                            })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
