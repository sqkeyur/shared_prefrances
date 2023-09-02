import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefapp/view/users.dart';

class HomeController extends GetxController {
  late SharedPreferences sharedPreferences;

  @override
  void onInit() {
    super.onInit();
    initialGetSaved();
  }

  void initialGetSaved() async {
    sharedPreferences = await SharedPreferences.getInstance();

    String? jsonData = sharedPreferences.getString('userdata');
    if (jsonData != null) {
      Map<String, dynamic> jsondatais = jsonDecode(jsonData);
      var user = User.fromJson(jsondatais);
      nameController.text = user.name!;
      emailController.text = user.email!;
      passwordController.text = user.password!;
    }
  }

  void storeData() {
    print("padmani");

    User user = User(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
    );

    String userJson = jsonEncode(user);
    sharedPreferences.setString('userdata', userJson);

    print("keyur");
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
