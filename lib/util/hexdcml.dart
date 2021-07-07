import 'package:flutter/material.dart';

class Hexdcml extends Color {
  static int hexdecimal(String color) {
    color = color.toLowerCase().replaceAll("#", "");
    if (color.length == 6) {
      color = "FF" + color;
    }
    return int.parse(color, radix: 16);
  }

  Hexdcml(final String color) : super(hexdecimal(color));
}
