import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputsText extends StatelessWidget {
  final TextInputType? typeinput;
  final String? title;
  final Icon? icon;
  final bool? isBorder;

  const InputsText(
      {Key? key, this.typeinput, this.icon, this.title, this.isBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            counterStyle: TextStyle(backgroundColor: Colors.red),
            hintText: "$title",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: icon,
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

  const Btn(
      {Key? key, this.name, required this.rout, this.color, this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      child: ClipRRect(
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(30),
            foregroundColor: MaterialStateProperty.all<Color?>(Colors.blue),
            backgroundColor: MaterialStateProperty.all<Color?>(color),
            overlayColor: MaterialStateProperty.all<Color?>(Colors.blue),
          ),
          onPressed: () => Get.offAllNamed("$rout"),
          child: Text(
            "$name",
            style: TextStyle(fontWeight: FontWeight.bold, color: colorText),
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
          body: ListView(
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
                  exit(1);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
