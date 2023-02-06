import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teste_app/Auth/constant/sizes.dart';
import 'package:teste_app/Contoller/login_controller.dart';

import 'constant/images_string.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<LoginScreen> {
  var _islogin = false.obs;
  signIn(String email, String Password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  }

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 300,
              child: Image(image: AssetImage(iscae)),
            ),
            Text(
              welcame,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              welcameSubtitre,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            Form(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: loginController.emailController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      labelText: temail,
                      hintText: temail,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: tFormHeight - 10,
                  ),
                  TextFormField(
                      controller: loginController.passwordController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.fingerprint_rounded),
                        labelText: tpassword,
                        hintText: tpassword,
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_rounded)),
                      )),
                  const SizedBox(height: tFormHeight - 10),
                  SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color.fromARGB(255, 76, 150, 78),
                          ),
                          onPressed: () => loginController.loginUser(),
                          child: Text("LOGIN")))
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
