import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile/views/screens/controllers-screens/controller_login.dart';
import 'package:validatorless/validatorless.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerLogin>(
      init: ControllerLogin(),
      builder: (_) => Scaffold(
        backgroundColor: Colors.amber,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 90,
              ),
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    "assets/svg/login.svg",
                    width: 270,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: Form(
                  key: _.key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              "Email",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              validator: Validatorless.multiple([
                                Validatorless.required("Email obrigatório"),
                                Validatorless.email("Email inválido")
                              ]),
                              controller: _.email,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                counterStyle:
                                    TextStyle(backgroundColor: Colors.red),
                                hintText: "Email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              "Senha",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              validator:
                                  Validatorless.required("Campo obrigatório"),
                              controller: _.passwordEditing,
                              obscureText: _.password,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                counterStyle:
                                    TextStyle(backgroundColor: Colors.red),
                                hintText: "Senha",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.amber,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () => _.vispssword(),
                                  icon: _.password
                                      ? Icon(Icons.visibility_off,
                                          color: Colors.amber)
                                      : Icon(
                                          Icons.visibility,
                                          color: Colors.amber,
                                        ),
                                ),
                              ),
                            ),
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
                                "Esqueceu sua senha ?",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 50,
                            width: 180,
                            child: ClipRRect(
                              child: ElevatedButton(
                                autofocus: true,
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color?>(
                                          Colors.white),
                                ),
                                onPressed: () {
                                  var formvald =
                                      _.key.currentState?.validate() == true;
                                  if (formvald == true) {
                                    _.userLogin.loginUser(
                                        _.email.text, _.passwordEditing.text);
                                    Get.toNamed("/home");
                                  } else {
                                    print("Erro");
                                  }
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 75,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Não tem um conta ?",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed("/register"),
                            child: Text(
                              "Cadastra-se",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
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
