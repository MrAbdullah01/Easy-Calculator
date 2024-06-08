import 'package:easy_calculator/provider/provider.dart';
import 'package:easy_calculator/utils/colors.dart';
import 'package:easy_calculator/utils/header.dart';
import 'package:easy_calculator/utils/helper_text_widget.dart';
import 'package:easy_calculator/utils/reuse_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:provider/provider.dart';

import '../../utils/images_path.dart';
import '../../widgets/numeric_button.dart';

class CelToFar extends StatelessWidget {
  const CelToFar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: Header().customHeader("C ° to F °",context),
      body: Consumer<CalculatorProvider>(builder: (context,provider,child){
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.dp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(ImagesPath.onBoard2,height: 20.h,width: 50.w,)),
                TextWidget(text: "Celsius", fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                SizedBox(height: 5),
                // TextFormField(
                //   onChanged: (value){
                //     provider.fahrenheitToCelsius(double.parse(value));
                //   },
                //   validator: (fieldValue){
                //     if(fieldValue!.isEmpty){
                //       return "Enter the Data";
                //     }else{
                //       return null;
                //     }
                //   },
                //   textInputAction: TextInputAction.done,
                //   keyboardType: TextInputType.number,
                //   style: TextStyle(
                //       fontSize: 12,
                //       fontWeight: FontWeight.w500,
                //       color: Colors.black
                //   ),
                //   cursorColor: appColor,
                //   controller: calculatorC,
                //   textAlign: TextAlign.start,
                //   decoration: InputDecoration(
                //     prefixIconColor: appColor,
                //     hintText: "Fahrenheit",
                //     hintStyle: TextStyle(
                //       fontSize: 12,
                //       fontWeight: FontWeight.w500,
                //     ),
                //     fillColor: Colors.white,
                //     filled: true,
                //     alignLabelWithHint: true,
                //     border: OutlineInputBorder(
                //       borderSide:  BorderSide(
                //         color: appColor,
                //         width: 1.5,
                //       ),
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderSide:  BorderSide(
                //         color: appColor,
                //         width: 1.5,
                //       ),
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderSide:  BorderSide(
                //         color: appColor,
                //         width: 1.5,
                //       ),
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  height: 6.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appColor,width: 1.5)
                  ),
                  child: TextWidget(text: provider.celsius.toString(), fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                ),
                SizedBox(height: 10,),
                TextWidget(text: "Fahrenheit", fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  height: 6.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appColor,width: 1.5)
                  ),
                  child: TextWidget(text: provider.fahrenheitA.toString(), fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: appColor),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: "1",onTap: (){
                          provider.celsiusCal("1");
                        },),
                        NumericButton(text: "2",onTap: (){
                          provider.celsiusCal("2");
                        },),
                        NumericButton(text: "3",onTap: (){
                          provider.celsiusCal("3");
                        },)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: "4",onTap: (){
                          provider.celsiusCal("4");
                        },),
                        NumericButton(text: "5",onTap: (){
                          provider.celsiusCal("5");
                        },),
                        NumericButton(text: "6",onTap: (){
                          provider.celsiusCal("6");
                        },)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: "7",onTap: (){
                          provider.celsiusCal("7");
                        },),
                        NumericButton(text: "8",onTap: (){
                          provider.celsiusCal("8");
                        },),
                        NumericButton(text: "9",onTap: (){
                          provider.celsiusCal("9");
                        },)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumericButton(text: ".",onTap: (){
                          provider.celsiusCal(".");
                        },),
                        NumericButton(text: "0",onTap: (){
                          provider.celsiusCal("0");
                        },),
                        NumericButton(text: "Del",onTap: (){
                          provider.delCelsius();
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
