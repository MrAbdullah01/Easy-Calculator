import 'package:easy_calculator/utils/colors.dart';
import 'package:easy_calculator/utils/helper_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Header {
  AppBar customHeader(title,context){
    return AppBar(
      centerTitle: true,
      backgroundColor: appColor,
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: () {
        FocusScope.of(context).unfocus();
        Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back)),
      title: TextWidget(text: title, fontSize: 18.dp, fontWeight: FontWeight.bold, isTextCenter: false, textColor: bgColor),
    );
  }
}
