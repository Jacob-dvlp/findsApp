import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile/connection/conection.dart';
import 'package:mobile/ui_respository/ui_model.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/util/hexdcml.dart';

class Login implements UiModel {
  final Conection conection = new Conection();
  @override
  Future loginUser(email, password) async {
    try {
      http.Response response = await http.post(
        Uri(scheme: conection.point + conection.login.toString()),
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{"Email": email, "Senha": password}),
      );
      conection.jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 201 || response.statusCode == 200) {
        Fluttertoast.showToast(
            msg: conection.jsonResponse["message"],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 2,
            backgroundColor: Hexdcml("0db02b"),
            textColor: Colors.white,
            fontSize: 16.0);
            
      } else if (response.statusCode == 404 || response.statusCode == 401) {
        Fluttertoast.showToast(
            msg: conection.jsonResponse["message"],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Falha no sistema",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  @override
  Future createUser() {

    throw UnimplementedError();
  }

}
