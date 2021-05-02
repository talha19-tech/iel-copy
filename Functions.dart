import 'package:flutter/material.dart';

class Functions {
  static void showSnackBar(
      GlobalKey<ScaffoldState> scaffold, String message, Color color) {
    final snack = SnackBar(
      content: Text(message),
      backgroundColor: color,
    );
    scaffold.currentState.showSnackBar(snack);
  }

  static void hideSnackBar(GlobalKey<ScaffoldState> scaffold) {
    scaffold.currentState.hideCurrentSnackBar();
  }
}
