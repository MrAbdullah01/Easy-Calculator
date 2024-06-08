import 'package:easy_calculator/provider/provider.dart';
import 'package:easy_calculator/screens/splash_screen/splash_screen.dart';
import 'package:easy_calculator/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  FlutterSizer(
        builder: (context, orientation, screenType) {
          return MultiProvider(providers: [
            ChangeNotifierProvider(create: (context) => CalculatorProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Easy Calculator',
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                  iconTheme: IconThemeData(
                      color: bgColor
                  )
              ),
              colorScheme: ColorScheme.fromSeed(seedColor: appColor,primary: appColor ),
              useMaterial3: true,
            ),
            home: const SplashScreen(),
          ),
          );
        },
    );
  }
}

