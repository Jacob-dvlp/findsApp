import 'dart:convert';

import 'package:mobile/connection/conection.dart';
import 'package:mobile/statusCodemessages/statusCode.dart';
import 'package:mobile/ui_respository/ui_model.dart';
import 'package:http/http.dart' as http;

class AuthenticnUser implements UiModel {
  final Conection _conection = new Conection();
  final Statuscode _statuscode = new Statuscode();

  @override
  Future loginUser(email, password) async {
    try {
      http.Response response = await http.post(
        Uri(scheme: _conection.point + _conection.login.toString()),
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(
          <String, String>{"Email": email, "Senha": password},
        ),
      );
      _conection.jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 201)
        return _statuscode.statuCode200(
          _conection.jsonResponse["message"],
        );
      if (response.statusCode == 404 || response.statusCode == 401)
        return _statuscode.statuCode401(
          _conection.jsonResponse["message"],
        );
    } catch (e) {
      return _statuscode.statuCode500("Falha no sistema");
    }
  }

  @override
  Future createUser(
    String nome,
    String sobrenome,
    String contacto,
    dynamic senha,
    String rua,
    int numero,
    String bairro,
    String cidd,
  ) async {
    try {
      http.Response response = await http.post(
        Uri(
          scheme: _conection.point + _conection.create.toString(),
        ),
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(
          <String, dynamic>{
            "nome": nome,
            "sobrenome": sobrenome,
            "email": contacto,
            "senha": senha,
            "rua": rua,
            "cidade": cidd,
            "bairro": bairro,
            "numcasa": numero
          },
        ),
      );
      _conection.jsonResponse = jsonEncode(response.body);
      if (response.statusCode == 201 || response.statusCode == 200)
        return _statuscode.statuCode200(
          _conection.jsonResponse["messagem"],
        );
      if (response.statusCode == 401)
        return _statuscode.statuCode200(
          _conection.jsonResponse["message"],
        );
    } catch (e) {}
  }
}
