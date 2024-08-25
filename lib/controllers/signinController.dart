
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SigninController extends GetxController {
  static SigninController get to => Get.find();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var isLoading = false.obs;

  final GetStorage storage = GetStorage();


  String? validatePassword(String? value) {
    if (!GetUtils.isLengthGreaterOrEqual(value, 6)) {
      return 'Password is not valid';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (!GetUtils.isEmail(value ?? '')) {
      return 'Email is not valid';
    }
    return null;
  }

  void signin() async {
  
  }

  @override
  void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
