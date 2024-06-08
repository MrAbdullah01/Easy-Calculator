import 'package:easy_calculator/screens/calculation/calculation.dart';
import 'package:easy_calculator/screens/cel_to_far/cel_to_far.dart';
import 'package:easy_calculator/screens/far_to_cel/far_to_cel.dart';
import 'package:easy_calculator/screens/grams_to_kg/grams_to_kg.dart';
import 'package:easy_calculator/screens/home_screen/home_screen_components/grid_container.dart';
import 'package:easy_calculator/utils/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../utils/colors.dart';
import '../../utils/helper_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appColor,
        title: TextWidget(text: "Easy Calculator", fontSize: 18.dp, fontWeight: FontWeight.bold, isTextCenter: false, textColor: bgColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(ImagesPath.onBoard4,height: 25.h,width: 50.w,),
          Container(
            height: 50.h,
            width: 100.w,
            child: GridView(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 10),
              children: [
                GridContainer(text: "C ° to F °", onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CelToFar()));
                },),
                GridContainer(text: "F ° to C °", onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const FarToCel()));
                },),
                GridContainer(text: "Calculation", onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Calculation()));
                },),
                GridContainer(text: "Grams to Kg", onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const GramsToKg()));
                },),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
