import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../utils/colors.dart';

class CalculatorProvider extends ChangeNotifier{

  double fahrenheitA = 0;
  double celsiusA = 0;
  String fahrenheit = "";
  String celsius = "";
  String userVal = "";
  String answer = "";
  String grams = "";
  String kilograms = "";
  int currentIndex = 0;

  userValue(String text){
    userVal += text;
    notifyListeners();
  }

  clearValue(){
    userVal = "";
    answer = "";
    notifyListeners();
  }

  gramsToKg(String text){
    grams += text;
   double kg = double.parse(grams) / 1000;
   kilograms = kg.toString();
   notifyListeners();
  }

  fahrenheitCal(String text){
    fahrenheit += text;
    fahrenheitToCelsius(double.parse(fahrenheit));
    notifyListeners();
  }

  celsiusCal(String text){
    celsius += text;
    celsiusToFahrenheit(double.parse(celsius));
    notifyListeners();
  }

  celsiusToFahrenheit(double celsius) {
     fahrenheitA = celsius * 9 / 5 + 32;
     notifyListeners();
  }

  fahrenheitToCelsius(double fahrenheit) {
    celsiusA = (fahrenheit - 32) * 5 / 9;
    notifyListeners();
  }

  delFahrenheit(){
    if(fahrenheit.length > 1){
      fahrenheit = fahrenheit.substring(0, fahrenheit.length - 1);
      fahrenheitToCelsius(double.parse(fahrenheit));
    }else{
      fahrenheit = "";
      celsiusA = 0;
    }
    notifyListeners();
  }

  delCelsius(){
    if(celsius.length > 1){
      celsius = celsius.substring(0, celsius.length - 1);
      celsiusToFahrenheit(double.parse(celsius));
    }else{
      celsius = "";
      fahrenheitA = 0;
    }
    notifyListeners();
  }

  delKg(){
    if(grams.length > 1){
      grams = grams.substring(0, grams.length - 1);
      double kg = double.parse(grams) / 1000;
      kilograms = kg.toString();
      notifyListeners();
    }else{
      grams = "";
      kilograms = "";
      notifyListeners();
    }
  }

  delValue(){
    if(userVal.length > 1){
      userVal = userVal.substring(0, userVal.length - 1);
      notifyListeners();
    }else{
      userVal = "";
      notifyListeners();
    }
  }

  equalPress(){

    String finalUserInput = userVal.replaceAll("x", "*");

    Parser p = Parser();
    Expression exp = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();

    notifyListeners();
  }

  Container buildDot(index){
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: currentIndex == index ? 25 : 10,
      decoration: BoxDecoration(
          color: appColor,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }

  setPage(int index){
    currentIndex = index;
    notifyListeners();
  }

}