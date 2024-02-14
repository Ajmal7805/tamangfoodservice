import 'package:flutter/material.dart';
import 'package:tamangfoodservice/profilesettings.dart';
import 'package:tamangfoodservice/screens/homescreen.dart';
import 'package:tamangfoodservice/signin/signup/LogintoTamangFoodServices.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController fullnamecontroller = TextEditingController();
  TextEditingController emailaddrescontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool passwordVisible = false;
  final formkey =GlobalKey<FormState>();
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
          'Welcome',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: Container(
          margin: EdgeInsets.all(21),
          child: ListView(
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'Enter your Name, Email and Password for sign up.',
                style: TextStyle(fontSize: 17, color: Color(0xff868686)),
              ),
              SizedBox(
                height: 34,
              ),
              TextFormField(
                validator: (value) {
                  print('jhg');
                  if (value!=null && value.isEmpty){
                    return 'Enter your Full Name';
                  }
                },
                controller: fullnamecontroller,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                    focusColor: Colors.black,
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              SizedBox(
                height: 18,
              ),
              TextFormField(
                validator: (value) {
                  if (value!=null && value.isEmpty){
                    return 'Enter your Email address';
                  }
                },
                controller: emailaddrescontroller,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                    focusColor: Colors.black,
                    labelText: 'Email address',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              SizedBox(
                height: 18,
              ),
              TextFormField(
                validator: (value) {
                  if(value!=null && value.isEmpty){
                    return 'Enter your password';
                  }
                  return null;
                },
                controller: passwordcontroller,
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
                        passwordVisible ? Icons.visibility_off : Icons.visibility,
                        size: 20,
                      ),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                 if( formkey.currentState!.validate()==true){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Profilesettings(
                          username: fullnamecontroller.text,
                          emailaddress: emailaddrescontroller.text,
                          password: passwordcontroller.text);
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
                    'Sigh up',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'By Signing up you agree to our Terms Conditions & Privacy Policy.',
                style: TextStyle(fontSize: 16, color: Color(0xff868686)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Or',
                    style: TextStyle(fontSize: 16, color: Color(0xff868686)),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
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
