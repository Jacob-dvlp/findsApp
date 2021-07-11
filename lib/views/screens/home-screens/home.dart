import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile/views/screens/controllers-screens/controller_home.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  double value = 0;
  bool darkmode = false;
  Brightness? _brightness;

  void chengThema() {
    _brightness =
        _brightness == Brightness.dark ? Brightness.light : Brightness.dark;
    setState(() {});
  }

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
                  Colors.amber,
                  Colors.amberAccent,
                  Colors.amber,
                  Colors.amber,
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
                      child: Container(
                        color: Colors.amber,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.amber[500],
                              maxRadius: 56,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(65),
                                child: Image.asset(
                                  "assets/img/larte.jpg",
                                  width: 300,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
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
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 0.0),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.post_add,
                              color: Colors.white,
                            ),
                            trailing: Icon(Icons.chevron_right),
                            title: Text(
                              "Criar publicação",
                              style: drawetitles,
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                            trailing: Icon(Icons.chevron_right),
                            title: Text(
                              "Editar perfil",
                              style: drawetitles,
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.dark_mode,
                              color: Colors.white,
                            ),
                            trailing:
                                Switch(value: darkmode, onChanged: (v) {}),
                            title: Text(
                              "Dark mode",
                              style: drawetitles,
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.feedback,
                              color: Colors.white,
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
                            leading: Icon(Icons.facebook, color: Colors.white),
                            title: Text(
                              "Facebook",
                              style: drawetitles,
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.email, color: Colors.white),
                            title: Text(
                              "E-mail",
                              style: drawetitles,
                            ),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.book,
                              color: Colors.white,
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
                              color: Colors.white,
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
                      title: Text("Hello Flutter"),
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_active,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    body: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 260,
                              child: Stack(
                                children: [
                                  SvgPicture.asset("assets/svg/card.svg"),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Opacity(
                                      opacity: 0.5,
                                      child: Container(
                                        height: 100,
                                        color: Colors.amber[500],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
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
        ),
      ),
    );
  }
}
