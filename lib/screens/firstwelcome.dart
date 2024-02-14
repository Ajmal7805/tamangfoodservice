import 'package:flutter/material.dart';
import 'package:tamangfoodservice/screens/secondscreen.dart';

class Firstwelcome extends StatefulWidget {
  const Firstwelcome({super.key});

  @override
  State<Firstwelcome> createState() => _FirstwelcomeState();
}

class _FirstwelcomeState extends State<Firstwelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset('images/Group 3.png'),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
            'Welcome',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "It’s a pleasure to meet you. We are excited that you’re here so let’s get started!",
            style: TextStyle(fontSize: 18, ),textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 60,
          ),
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Secondscreen();
            },));
          },
            child: Container(
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xffEEA734)),
              child: Center(child: Text('Get Started',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          )
              ],
            ),
          )
        ],
      ),
    );
  }
}
