import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputsText extends StatelessWidget {
  final TextInputType? typeinput;
  final String? title;
  final Icon? icon;
  final Widget? iconpassword;
  final TextEditingController? controller;

  const InputsText({
    Key? key,
    this.typeinput,
    this.icon,
    this.title,
    this.iconpassword,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                fillColor: Colors.white,
                counterStyle: TextStyle(backgroundColor: Colors.red),
                hintText: "$title",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: icon,
                suffixIcon: iconpassword),
          ),
        ),
      ),
    );
  }
}

class Btn extends StatelessWidget {
  final String? name;
  final String? rout;
  final Color? color, colorText;
  final double? fontSize;

  const Btn(
      {Key? key,
      this.name,
      required this.rout,
      this.color,
      this.colorText,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      child: ClipRRect(
        child: ElevatedButton(
          autofocus: true,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(color),
          ),
          onPressed: () => Get.offAllNamed("$rout"),
          child: Text(
            "$name",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: colorText,
                fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);
  static const TextStyle? drawetitles =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Scaffold(
          body: null
          
        ),
      ),
    );
  }
}
