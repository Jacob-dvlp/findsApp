import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/util/hexdcml.dart';
import 'package:mobile/views/screens/controllers-screens/controller_register.dart';
import 'package:mobile/views/widgets/custons.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerRegister>(
      init: ControllerRegister(),
      builder: (_) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            child: Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
            backgroundColor: Colors.amberAccent,
            onPressed: () => Get.back(),
          ),
        ),
        body: Container(
          color: Colors.amber,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Cadastre-se!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "É rápido e fácil.",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Text(
                      "Dados Pessoal:",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 50,
                            child: InputsText(
                              title: "           Nome",
                              typeinput: TextInputType.text,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 50,
                            child: InputsText(
                              title: "        Sobrenome",
                              typeinput: TextInputType.text,
                            ),
                          ),
                        ),
                      ],
                    ),
                    InputsText(
                      title: "                           Email ou celular",
                      typeinput: TextInputType.emailAddress,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: TextField(
                            obscureText: _.password,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              counterStyle:
                                  TextStyle(backgroundColor: Colors.red),
                              hintText: "                      Criar Senha",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.amber,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () => _.vispssword(),
                                icon: _.password
                                    ? Icon(
                                        Icons.visibility,
                                        color: Colors.amber,
                                      )
                                    : Icon(
                                        Icons.visibility_off,
                                        color: Colors.amber,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: TextField(
                            obscureText: _.password,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              counterStyle:
                                  TextStyle(backgroundColor: Colors.red),
                              hintText: "                    Repetir senha",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              prefixIcon: Icon(Icons.lock, color: Colors.amber),
                              suffixIcon: IconButton(
                                onPressed: () => _.vispssword(),
                                icon: _.password
                                    ? Icon(
                                        Icons.visibility,
                                        color: Colors.amber,
                                      )
                                    : Icon(
                                        Icons.visibility_off,
                                        color: Colors.amber,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Text(
                          "Endereço:",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    InputsText(
                      title: "                                     Rua/Av",
                      typeinput: TextInputType.text,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InputsText(
                            title: "            Número",
                            typeinput: TextInputType.text,
                          ),
                        ),
                        Expanded(
                          child: InputsText(
                            title: "             Bairro",
                            typeinput: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    InputsText(
                      title: "                                    Cidade",
                      typeinput: TextInputType.text,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 300,
                        child: Btn(
                          color: Colors.white,
                          colorText: Colors.amber,
                          rout: "/home",
                          name: "Cadastrar-se",
                          fontSize:20
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
