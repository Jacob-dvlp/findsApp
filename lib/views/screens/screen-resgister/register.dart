import 'package:flutter/material.dart';
import 'package:mobile/views/widgets/custons.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastra-se"),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            InputsText(
              title: "Seu nome",
              typeinput: TextInputType.text,
            ),
            InputsText(
              title: "Sua Provincia",
              typeinput: TextInputType.text,
            ),
            Row(
              children: [
                Expanded(
                  child: InputsText(
                    title: "Seu Municipio",
                    typeinput: TextInputType.text,
                  ),
                ),
                Expanded(
                  child: InputsText(
                    title: "Seu Bairro",
                    typeinput: TextInputType.text,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InputsText(
                    title: "Sua Rua",
                    typeinput: TextInputType.text,
                  ),
                ),
                Expanded(
                  child: InputsText(
                    title: "Seu número",
                    typeinput: TextInputType.number,
                  ),
                ),
              ],
            ),
            InputsText(
              title: "Seu email",
              typeinput: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            Btn(
              rout: "/home",
              name: "Criar a Conta",
            )
          ],
        ),
      ),
    );
  }
}
