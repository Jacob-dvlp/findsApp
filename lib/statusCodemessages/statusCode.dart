import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile/util/hexdcml.dart';

class Statuscode {
  void statuCode200(
    String? ms,
  ) {
    Fluttertoast.showToast(
        msg: "$ms",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 2,
        backgroundColor: Hexdcml("0db02b"),
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void statuCode401(
    String? ms,
  ) {
    Fluttertoast.showToast(
        msg: "$ms",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void statuCode500(String ms) {
    Fluttertoast.showToast(
        msg: "Falha no sistema",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
