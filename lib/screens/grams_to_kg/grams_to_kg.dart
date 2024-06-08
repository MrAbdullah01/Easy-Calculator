import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';
import '../../utils/colors.dart';
import '../../utils/header.dart';
import '../../utils/helper_text_widget.dart';
import '../../utils/images_path.dart';
import '../../widgets/numeric_button.dart';

class GramsToKg extends StatelessWidget {
  const GramsToKg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: Header().customHeader("Grams to Kg",context),
      body: Consumer<CalculatorProvider>(builder: (context,provider,child){
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.dp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(ImagesPath.onBoard3,height: 18.h,width: 50.w,)),
                TextWidget(text: "Grams", fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  height: 6.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appColor,width: 1.5)
                  ),
                  child: TextWidget(text: provider.grams.toString(), fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                ),
                SizedBox(height: 10,),
                TextWidget(text: "Kilograms", fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  height: 6.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appColor,width: 1.5)
                  ),
                  child: TextWidget(text: provider.kilograms.toString(), fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: "1",onTap: (){
                          provider.gramsToKg("1");
                        },),
                        NumericButton(text: "2",onTap: (){
                          provider.gramsToKg("2");
                        },),
                        NumericButton(text: "3",onTap: (){
                          provider.gramsToKg("3");
                        },)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: "4",onTap: (){
                          provider.gramsToKg("4");
                        },),
                        NumericButton(text: "5",onTap: (){
                          provider.gramsToKg("5");
                        },),
                        NumericButton(text: "6",onTap: (){
                          provider.gramsToKg("6");
                        },)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: "7",onTap: (){
                          provider.gramsToKg("7");
                        },),
                        NumericButton(text: "8",onTap: (){
                          provider.gramsToKg("8");
                        },),
                        NumericButton(text: "9",onTap: (){
                          provider.gramsToKg("9");
                        },)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: ".",onTap: (){
                          provider.gramsToKg(".");
                        },),
                        NumericButton(text: "0",onTap: (){
                          provider.gramsToKg("0");
                        },),
                        NumericButton(text: "Del",onTap: (){
                          provider.delKg();
                        },)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
