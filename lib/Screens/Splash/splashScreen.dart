import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:touristapp/CustomWidgets/customText.dart';
import 'package:touristapp/resources/resource.dart';

import '../OnBoarding/onboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Resource.colors.mainColor,
      body: Center(
        child: Column(

          children: [
            SizedBox(height: appSize.height*0.3,),
          CustomText(title: Resource.texts.tourist, textColor: Resource.colors.whiteColor, fontSize: appSize.height*0.053, textAlign:TextAlign.center, fontFamily: 'Lobster'),
            SizedBox(height: appSize.height*0.004,),
          CustomText(title: Resource.texts.find, textColor:Resource.colors.whiteColor, fontSize:appSize.height*0.020, textAlign:TextAlign.center,),

          ],
        ),
      ),
    );
  }
}
