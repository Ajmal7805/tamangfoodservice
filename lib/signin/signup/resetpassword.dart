import 'package:flutter/material.dart';
import 'package:tamangfoodservice/screens/homescreen.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: Text(
          'Forgot Password',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(21),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reset email sent',
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
              'We have sent a instructions email to sajin tamang@figma.com.',
              style: TextStyle(fontSize: 17, color: Color(0xff868686)),
              
            ),
             
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Homescreen();
                  },
                ));
              },
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffEEA734)),
                child: Center(
                    child: Text(
                  'Send again',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 123,left: 20),
              child: Image.asset('images/Open Doodles.png',height: 237.03,width: 307,),
            )
          ],
        ),
      ),
    );
  }
}