import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile/views/screens/controllers-screens/controller_splash.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerSplash>(
      init: ControllerSplash(),
      builder: (_) => Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          children: [
            SizedBox(
              height: 140,
            ),
            SvgPicture.asset(
              "assets/svg/splash.svg",
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
