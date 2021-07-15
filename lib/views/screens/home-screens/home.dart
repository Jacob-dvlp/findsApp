import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile/views/screens/controllers-screens/controller_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllersScreen>(
      init: ControllersScreen(),
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.white,
                  Colors.amberAccent,
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: CircleAvatar(
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
                              style: _.drawetitles,
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
                              style: _.drawetitles,
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.dark_mode,
                              color: Colors.white,
                            ),
                            trailing: Switch(value: true, onChanged: (v) {}),
                            title: Text(
                              "Dark mode",
                              style: _.drawetitles,
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
                              style: _.drawetitles,
                            ),
                            onTap: () {},
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Redes Sociais",
                              style: _.drawetitles,
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.facebook, color: Colors.white),
                            title: Text(
                              "Facebook",
                              style: _.drawetitles,
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.email, color: Colors.white),
                            title: Text(
                              "E-mail",
                              style: _.drawetitles,
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
                              style: _.drawetitles,
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
                              style: _.drawetitles,
                            ),
                            onTap: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: _.value),
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
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(80),
                                  bottomLeft: Radius.circular(
                                    80,
                                  ),
                                ),
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 2,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      "assets/svg/splash.svg",
                                      width: 340,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Opacity(
                                      opacity: 0.89,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.black)),
                                        height:
                                            MediaQuery.of(context).size.height /
                                                4.8,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 230.0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Cartão Multicaxa",
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  textAlign: TextAlign.start),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 1.0),
                                            child: Text(
                                                "Um pouco da descriçao do item perdido vai\n aqui. Não deve ir todo, mas somente o preview... ",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                                textAlign: TextAlign.justify),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Container(
                                                  width: 200,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Ver item",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: 100,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey)),
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon:
                                                          Icon(Icons.message)),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5.0, top: 9),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        width: 48,
                                        height: 45,
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 11.0, top: 4.0),
                                            child: Column(
                                              children: [
                                                Icon(Icons.visibility),
                                                Text(
                                                  "100",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
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
              onHorizontalDragUpdate: (e) {
                if (e.delta.dx > 0) {
                  _.updateDrawer();
                } else {
                  _.updatDrawerZero();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
