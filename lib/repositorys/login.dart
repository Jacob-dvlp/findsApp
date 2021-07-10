import 'package:flutter/material.dart';
import 'package:mobile/connection/conection.dart';
import 'package:mobile/ui_respository/ui_model.dart';
import 'package:mobile/urls/urls.dart';

class Login implements UiModel {
  final Conection _conection = new Conection();
  final url = new UiUrl();
  @override
  Future loginUser(email, password) async {
    final response = await _conection.post(
        url.point + url.login.toString(), ThemeData.dark());
  }
}
