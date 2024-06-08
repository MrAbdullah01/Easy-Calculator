import 'package:easy_calculator/widgets/numeric_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';
import '../../utils/colors.dart';
import '../../utils/header.dart';
import '../../utils/helper_text_widget.dart';
import '../../utils/images_path.dart';

class Calculation extends StatelessWidget {
  const Calculation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: Header().customHeader("Calculation",context),
      body: Consumer<CalculatorProvider>(builder: (context,provider,child){
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.dp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Center(child: Image.asset(ImagesPath.onBoard1,height: 18.h,width: 50.w,)),
                // SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  height: 15.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child:SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextWidget(text: provider.userVal.toString(), fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                // TextWidget(text: "Celsius", fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  height: 15.h,
                  width: 100.w,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextWidget(text: provider.answer.toString(), fontSize: 24.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NumericButton(text: "AC",onTap: (){
                            provider.clearValue();
                          },),
                          NumericButton(text: "/",onTap: (){
                            provider.userValue("/");
                          },),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: "1",onTap: (){
                          provider.userValue("1");
                        },),
                        NumericButton(text: "2",onTap: (){
                          provider.userValue("2");
                        },),
                        NumericButton(text: "3",onTap: (){
                          provider.userValue("3");
                        },),
                        NumericButton(text: "x",onTap: (){
                          provider.userValue("x");
                        },),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: "4",onTap: (){
                          provider.userValue("4");
                        },),
                        NumericButton(text: "5",onTap: (){
                          provider.userValue("5");
                        },),
                        NumericButton(text: "6",onTap: (){
                          provider.userValue("6");
                        },),
                        NumericButton(text: "-",onTap: (){
                          provider.userValue("-");
                        },),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: "7",onTap: (){
                          provider.userValue("7");
                        },),
                        NumericButton(text: "8",onTap: (){
                          provider.userValue("8");
                        },),
                        NumericButton(text: "9",onTap: (){
                          provider.userValue("9");
                        },),
                        NumericButton(text: "+",onTap: (){
                          provider.userValue("+");
                        },),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: ".",onTap: (){
                          provider.userValue(".");
                        },),
                        NumericButton(text: "0",onTap: (){
                          provider.userValue("0");
                        },),
                        NumericButton(text: "Del",onTap: (){
                          provider.delValue();
                        },),
                        NumericButton(text: "=",onTap: (){
                          provider.equalPress();
                        },),
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
