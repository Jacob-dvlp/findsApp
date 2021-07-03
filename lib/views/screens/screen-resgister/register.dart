import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/views/widgets/custons.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          child: Icon(
            Icons.chevron_left,
            color: Colors.blue,
          ),
          backgroundColor: Colors.white,
          onPressed: () => Get.back(),
        ),
      ),
      body: Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 240,
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: 540,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1,
                        ),
                        InputsText(
                          title: "Nome completo",
                          typeinput: TextInputType.text,
                        ),
                        InputsText(
                          title: "Provincia",
                          typeinput: TextInputType.text,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InputsText(
                                title: "Municipio",
                                typeinput: TextInputType.text,
                              ),
                            ),
                            Expanded(
                              child: InputsText(
                                title: "Bairro",
                                typeinput: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InputsText(
                                title: "Rua",
                                typeinput: TextInputType.text,
                              ),
                            ),
                            Expanded(
                              child: InputsText(
                                title: "Número",
                                typeinput: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        InputsText(
                          title: "Email",
                          typeinput: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Btn(
                            colorText: Colors.white,
                            rout: "/home",
                            name: "Criar a Conta",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
