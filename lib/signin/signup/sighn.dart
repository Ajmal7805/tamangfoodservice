// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tamangfoodservice/profilesettings.dart';
import 'package:tamangfoodservice/screens/homescreen.dart';
import 'package:tamangfoodservice/screens/location.dart';
import 'package:tamangfoodservice/signin/signup/forgotpassword.dart';
import 'package:tamangfoodservice/signin/signup/signup.dart';

class Sighn extends StatefulWidget {
  const Sighn({super.key});

  @override
  State<Sighn> createState() => _SighnState();
}

class _SighnState extends State<Sighn> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController textfieldcontroller = TextEditingController();
  bool passwordVisible = false;
  final formkeys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          'Sign In',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formkeys,
        child: Container(
          margin: EdgeInsets.all(21),
          child: ListView(
            physics: ScrollPhysics(),
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome to Tamang Food Services',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Enter your Phone number or Email address for sign in. Enjoy your food :)',
                style: TextStyle(fontSize: 17, color: Color(0xff868686)),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Enter your email address';
                  }
                },
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                    focusColor: Colors.black,
                    labelText: 'Email address',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Enter your password';
                  }
                },
                controller: textfieldcontroller,
                cursorColor: Colors.black,
                obscureText: passwordVisible,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                    focusColor: Colors.black,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                      icon: Icon(
                        color: Colors.black,
                        passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 20,
                      ),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Forgotpassword();
                        },
                      ));
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(fontSize: 12, color: Color(0xff868686)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  if (formkeys.currentState!.validate() == true) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Profilesettings(
                          username: "",
                          emailaddress:emailcontroller.text,
                          password: textfieldcontroller.text,
                        );
                      },
                    ));
                  }
                },
                child: Container(
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffEEA734)),
                  child: Center(
                      child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have account?',
                    style: TextStyle(fontSize: 12, color: Color(0xff868686)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Signup();
                        },
                      ));
                    },
                    child: Text(
                      'Create new account.',
                      style: TextStyle(fontSize: 12, color: Color(0xff868686)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Or',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff395998),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'images/fb.webp',
                      height: 28,
                      width: 28,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Connect with Facebook',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff4285F4),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'images/google.png',
                      height: 28,
                      width: 28,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Connect with google',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
