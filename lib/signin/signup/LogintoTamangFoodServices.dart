import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:tamangfoodservice/screens/homescreen.dart';
import 'package:tamangfoodservice/screens/otp_screen.dart';

class LogintoTamangFoodServices extends StatefulWidget {
  const LogintoTamangFoodServices({super.key});

  @override
  State<LogintoTamangFoodServices> createState() =>
      _LogintoTamangFoodServicesState();
}

class _LogintoTamangFoodServicesState extends State<LogintoTamangFoodServices> {
   Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Text("+${country.phoneCode}(${country.isoCode})"),
          ],
        ),
      );
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
          'Login to Tamang Food Services',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Text(
              'Get started with Foodly',
              style: TextStyle(
                  fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Enter your phone number to use foodly and enjoy your food :)',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 34,
            ),TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                    focusColor: Colors.black,
                    labelText: 'Phone number',
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: CountryCodePicker(
onChanged: print,
         // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
         initialSelection: 'IT',
         favorite: ['+91','IND'],
         // optional. Shows only country name and flag
         showCountryOnly: false,
         // optional. Shows only country name and flag when popup is closed.
         showOnlyCountryWhenClosed: false,
         // optional. aligns the flag and the Text left
         alignLeft: false,

                    )
                    )
                    ),
                      SizedBox(
              height: 159,
            ),InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Otp_screen();
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
                  'Sign up',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
              
          ],
        ),
      ),
    );
  }
}
