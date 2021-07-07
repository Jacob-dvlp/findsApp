import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile/util/hexdcml.dart';
import 'package:mobile/views/screens/controllers-screens/controller_splash.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerSplash>(
      init: ControllerSplash(),
      builder: (_) => Scaffold(
        backgroundColor: Hexdcml("2397FA"),
        body: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            SvgPicture.asset(
              "assets/svg/open.svg",
              width: 500,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: 233,
              child: Column(
                children: [
                  SizedBox(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                  ),
                  RefreshProgressIndicator()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
