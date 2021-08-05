import 'package:flutter/material.dart';

import 'styles.dart';

//Text Strings

const usernameText = 'Username';
const passwordText = 'Password';

//Text Widgets

Text forgotPasswordText = Text('Forgot Password?', style: textTheme.subtitle2);
const Text signInText = Text('Sign In');

TextSpan signUpText = const TextSpan(
  style: TextStyle(fontSize: 14, fontFamily: 'Ubuntu', color: textColor),
  children: <TextSpan>[
    TextSpan(text: 'Don\'t have an account yet?'),
    TextSpan(text: ' Sign Up', style: TextStyle(fontSize: 14, fontFamily: 'Ubuntu', color: primaryColor, fontWeight: FontWeight.bold)),
  ],
);
