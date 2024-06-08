import 'package:easy_calculator/screens/home_screen/home_screen.dart';
import 'package:easy_calculator/utils/helper_text_widget.dart';
import 'package:easy_calculator/utils/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';
import '../../utils/colors.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});

  List<String> images = [ImagesPath.onBoard1, ImagesPath.onBoard2, ImagesPath.onBoard3,ImagesPath.onBoard4];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CalculatorProvider>(builder: (context,provider,child){
        return Column(
          children: [
            SizedBox(
              height: 87.h,
              child: PageView.builder(
                  itemCount: 4,
                  onPageChanged: (int index){
                    provider.setPage(index);
                  },
                  itemBuilder: (_,i){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(images[i],width: 70.w,),
                      ],
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20,),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  List.generate(images.length,
                          (index) =>provider.buildDot(index)
                  )
              ),
            )
          ],
        );
      }),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          height: 60,
          width: 100.w,
          decoration: BoxDecoration(
            color: appColor,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Center(child: TextWidget(text: "Get Started", fontSize: 16.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: bgColor)),
        ),
      ),
    );
  }
}
