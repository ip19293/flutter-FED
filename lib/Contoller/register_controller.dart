import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Service/Global.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  TextEditingController nomController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerUser() async {
    try {
      var headers = headerss;
      var url = Uri.parse(baseURL + registerURL);
      Map body = {
        'nom': nomController.text,
        'email': emailController.text.trim(),
        'password': passwordController.text
      };
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          print(token);
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', 'token');
          nomController.clear();
          emailController.clear();
          passwordController.clear();
        } else {
          throw jsonDecode(response.body)["message"] ?? "Error Occurence !";
        }
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text("Error!"),
              contentPadding: EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }
}
