import 'package:flutter/material.dart';
import 'package:tamangfoodservice/profilesettings.dart';
import 'package:tamangfoodservice/screens/firstwelcome.dart';
import 'package:tamangfoodservice/screens/homescreen.dart';
import 'package:tamangfoodservice/screens/secondscreen.dart';
import 'package:tamangfoodservice/signin/signup/forgotpassword.dart';
import 'package:tamangfoodservice/signin/signup/sighn.dart';
import 'package:tamangfoodservice/signin/signup/signup.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tamang food service',
      home: Firstwelcome()));
}
