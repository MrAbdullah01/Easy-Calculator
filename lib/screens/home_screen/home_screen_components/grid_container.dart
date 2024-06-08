import 'package:easy_calculator/utils/colors.dart';
import 'package:easy_calculator/utils/helper_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class GridContainer extends StatelessWidget {
  GridContainer({super.key,required this.text,required this.onTap});

  final String text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: appColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(text: text, fontSize: 18.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: bgColor),
            SizedBox(height: 8,),
            Container(
              padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: bgColor,
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.navigate_next_rounded,color: appColor,size: 28.dp,))
          ],
        ),
      ),
    );
  }
}
