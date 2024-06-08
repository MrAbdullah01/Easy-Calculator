import 'package:easy_calculator/utils/colors.dart';
import 'package:easy_calculator/utils/helper_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class NumericButton extends StatelessWidget {
   NumericButton({super.key,this.text = "",this.onTap});

   String text;
   VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 11.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: appColor,
          shape: BoxShape.circle
        ),
        child: Center(
          child: TextWidget(text: text, fontSize: 24.dp, fontWeight: FontWeight.w600,
            isTextCenter: false, textColor: bgColor,),
        ),
      ),
    );
  }
}
