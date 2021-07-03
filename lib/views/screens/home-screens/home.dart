import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/views/screens/controllers-screens/controller_home.dart';
import 'package:mobile/views/widgets/custons.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllersScreen>(
      init: ControllersScreen(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(_.titleBar),
          centerTitle: true,
        ),
        drawer: DrawerMenu(),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: RefreshProgressIndicator())],
        ),
        // body: Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: ListView.builder(
        //     itemCount: 10,
        //     itemBuilder: (BuildContext context, int index) {
        //       return Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Container(
        //               decoration: BoxDecoration(
        //                   color: Colors.white70,
        //                   border: Border.all(
        //                       color: Colors.blue,
        //                       width: 1.8,
        //                       style: BorderStyle.solid)),
        //               height: 350,
        //               child: Column(
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.all(8.0),
        //                     child: Column(
        //                       children: [
        //                         Row(
        //                           children: [
        //                             Align(
        //                               alignment: Alignment.topLeft,
        //                               child: Image.asset("assets/profile.png"),
        //                             ),
        //                             Padding(
        //                               padding: const EdgeInsets.all(8.0),
        //                               child: Column(
        //                                 children: [
        //                                   Text(
        //                                     "Jacob Larte",
        //                                     style: TextStyle(
        //                                       fontWeight: FontWeight.bold,
        //                                       fontSize: 18,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                         // Padding(
        //                         //   padding: const EdgeInsets.only(top: 8.0),
        //                         //   child: Align(
        //                         //     alignment: Alignment.bottomLeft,
        //                         //     child: Text(
        //                         //       "Item achado: ${_.obg}",
        //                         //       style: TextStyle(
        //                         //         fontWeight: FontWeight.bold,
        //                         //         fontSize: 15,
        //                         //       ),
        //                         //     ),
        //                         //   ),
        //                         // ),
        //                       ],
        //                     ),
        //                   ),
        //                   Image.asset("assets/test.jpg"),
        //                   Padding(
        //                     padding: const EdgeInsets.all(5.0),
        //                     child: Text(
        //                       "27/06/2021",
        //                       style: TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         fontSize: 16,
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ],
        //       );
        //     },
        //   ),
        // ),
      ),
    );
  }
}
