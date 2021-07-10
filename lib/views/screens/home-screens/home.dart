import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/util/hexdcml.dart';
import 'package:mobile/views/screens/controllers-screens/controller_home.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  double value = 0;
  static const TextStyle? drawetitles =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  Widget build(BuildContext context) {
    return GetBuilder<ControllersScreen>(
      init: ControllersScreen(),
      builder: (_) => Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Hexdcml("#D1ECFF"),
                Hexdcml("#D1ECFF"),
              ], begin: Alignment.topCenter, end: Alignment.topCenter),
            ),
          ),
          SafeArea(
            child: Container(
              width: 250.0,
              padding: EdgeInsets.all(1.0),
              child: Column(
                children: [
                  DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          child: FlutterLogo(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Text(
                            "Jacob Larte",
                            style: TextStyle(fontSize: 19),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.notifications,
                            color: Colors.blue,
                          ),
                          trailing: Icon(Icons.chevron_right),
                          title: Text(
                            "Notificação",
                            style: drawetitles,
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.dark_mode,
                            color: Colors.blue,
                          ),
                          trailing: Switch(value: false, onChanged: (v) {}),
                          title: Text(
                            "Dark mode",
                            style: drawetitles,
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.feedback,
                            color: Colors.blue,
                          ),
                          trailing: Icon(Icons.chevron_right),
                          title: Text(
                            "FeedBack",
                            style: drawetitles,
                          ),
                          onTap: () {},
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Redes Sociais",
                            style: drawetitles,
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.facebook, color: Colors.blue),
                          title: Text(
                            "Facebook",
                            style: drawetitles,
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.email, color: Colors.blue),
                          title: Text(
                            "E-mail",
                            style: drawetitles,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(
                            Icons.book,
                            color: Colors.blue,
                          ),
                          title: Text(
                            "Sobre nós",
                            style: drawetitles,
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.exit_to_app,
                            color: Colors.blue,
                          ),
                          title: Text(
                            "Sair",
                            style: drawetitles,
                          ),
                          onTap: () {
                            Get.back();
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: value),
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInQuad,
            builder: (_, double val, __) {
              return (Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi / 6) * val),
                child: Scaffold(
                  appBar: AppBar(
                    title: Text("3D Drawer"),
                  ),
                  body: Center(
                    child: Text("Testando a animação"),
                  ),
                ),
              ));
            },
          ),
          GestureDetector(
            // onTap: () {

            //},
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },
          )
        ],
      )

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
