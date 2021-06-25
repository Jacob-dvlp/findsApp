import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/views/widgets/custons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      maxRadius: 100,
                      child: Container(
                        child: Icon(
                          Icons.lock_outlined,
                          size: 170,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputsText(
                      title: "Seu Email",
                      icon: Icon(Icons.email_outlined),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputsText(
                      title: "Sua Senha",
                      icon: Icon(Icons.lock_outline),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () => {},
                    child: Text(
                      "Criar nova senha",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Btn(
              rout: "/home",
              name: "Faça o Login",
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Não se increveu ?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: () => Get.toNamed("/register"),
                  child: Text(
                    "Criar a conta",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
