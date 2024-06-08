import 'package:flutter/material.dart';

import 'colors.dart';

class ReuseField extends StatelessWidget {
  final TextEditingController inputController;
  final TextInputType? type;
  final TextInputAction? textInputAction;
  final String? hintText;
  final int? maxLines, maxLength;
  final Icon? prefixIcon;
  final bool obscureText;
  ReuseField({
    super.key,
    required this.inputController,
    this.type,
    this.maxLines = 1,
    this.textInputAction,
    this.hintText,
    this.maxLength,
    this.prefixIcon,
    this.obscureText = false,
    this.onTap
  });
  VoidCallback? onTap;
  VoidCallback? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      validator: (fieldValue){
        if(fieldValue!.isEmpty){
          return "Enter the Data";
        }else{
          return null;
        }
      },
      maxLines: maxLines,
      obscureText: obscureText,
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: type,
      style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: appColor
      ),
      cursorColor: appColor,
      controller: inputController,
      maxLength: maxLength,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: appColor,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        fillColor: Colors.white,
        filled: true,
        alignLabelWithHint: true,
        border: OutlineInputBorder(
          borderSide:  BorderSide(
            color: appColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(
            color: appColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(
            color: appColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
