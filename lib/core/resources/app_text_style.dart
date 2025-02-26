import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle Text_B_S70_LS10(BuildContext context) {
    return TextStyle(
      fontSize: 70,
      fontWeight: FontWeight.bold,
      letterSpacing: 10,
    );
  }

  static TextStyle AppBar_Text_N_S20_LS2(BuildContext context) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      letterSpacing: 2,
    );
  }

  static TextStyle Text_B_S30_LS2(BuildContext context) {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    );
  }

  static TextStyle Text_S50(BuildContext context) {
    return TextStyle(fontSize: 50);
  }

  static TextStyle Text_S30(BuildContext context) {
    return TextStyle(fontSize: 30);
  }

  static TextStyle Text_S25(BuildContext context) {
    return TextStyle(fontSize: 25);
  }

  static TextStyle Text_S20(BuildContext context) {
    return TextStyle(fontSize: 20);
  }
}
