import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:tamangfoodservice/screens/homescreen.dart';
import 'package:tamangfoodservice/signin/signup/sighn.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  List<String> images = [
    'images/Group 6.png',
        'images/Group 7.png',
        'images/Group 8.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600,
            
            child: CarouselSlider.builder(
                unlimitedMode: true,
                slideBuilder: (index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Image(image: AssetImage(images[index])),
                  );
                },
                slideTransform: CubeTransform(),
                slideIndicator: CircularSlideIndicator(
                 
                ),
                itemCount: images.length),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Sighn();
            },));
          },
            child: Container(margin: EdgeInsets.all(22),
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xffEEA734)),
              child: Center(child: Text('Get Started',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
