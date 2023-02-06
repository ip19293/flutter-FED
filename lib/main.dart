import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_app/Auth/login.dart';
import 'package:teste_app/homePage.dart';
import 'package:teste_app/views/ChowData.dart';

import 'appBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //appBar: MyAppBar(),
        body: LoginScreen(),
      ),
    );
  }
}
