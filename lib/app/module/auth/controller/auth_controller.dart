import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final formkey = GlobalKey<FormState>();
  var userEmail = "";
  var userName = "";
  var password = "";
  var isLogin = true;
  var isLoading = false;

  void submit(BuildContext context) {
    final isValid = formkey.currentState.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      formkey.currentState.save();
    }
  }

  String emailValidator(String value) {
    if (value.isEmpty || !value.contains('@')) {
      return "Please enter a valid email address";
    } else {
      return null;
    }
  }

  String passwordValidator(String value) {
    if (value.isEmpty || value.length < 7) {
      return "Password must be 7 characters long";
    } else {
      return null;
    }
  }

  String usernameValidation(String value) {
    if (value.isEmpty || value.length < 4) {
      return 'Please enter at least 4 characters';
    } else {
      return null;
    }
  }

  void switchLogin() {
    isLogin = !isLogin;
    update();
  }
}
