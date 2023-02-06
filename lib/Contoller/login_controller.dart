import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teste_app/Auth/home.dart';

import '../Service/Global.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginUser() async {
    try {
      var headers = headerss;
      var url = Uri.parse(baseURL + loginURL);
      Map body = {
        'email': emailController.text.trim(),
        'password': passwordController.text
      };
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['token'] != null) {
          var token = json['token'];
          print(token);
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', 'token');
          emailController.clear();
          passwordController.clear();
          Get.to(HomeP());
        }
      } else if (response.statusCode == 403) {
        throw jsonDecode(response.body)["message"];
      } else {
        throw jsonDecode(response.body)["Message"] ??
            "E-mail ou mot de passe non valide";
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text("Error!"),
              contentPadding: EdgeInsets.all(20),
              children: [Text("E-mail ou mot de passe non valide")],
            );
          });
    }
  }
}
