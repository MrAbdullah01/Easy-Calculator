import 'dart:async';

import 'package:easy_calculator/screens/home_screen/home_screen.dart';
import 'package:easy_calculator/screens/onboard_screen/onboard_screen.dart';
import 'package:easy_calculator/utils/colors.dart';
import 'package:easy_calculator/utils/helper_text_widget.dart';
import 'package:easy_calculator/utils/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

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
    Timer( const Duration(seconds: 3), () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: appColor,
                        blurRadius: 3,
                      spreadRadius: 2
                    )
                  ]
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    ImagesPath.logo,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextWidget(text: "Easy Calculator", fontSize: 24.dp, fontWeight: FontWeight.bold, isTextCenter: false, textColor: bgColor)
          ],
        ),
      ),
    );
  }
}
