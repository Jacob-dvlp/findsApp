import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/views/routes/routes.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PageRouter.INITIL,
      getPages: PageRouter.routes,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primaryColor: Colors.amber[500],
        primarySwatch: Colors.amber,
      ),
    );
  }
}
