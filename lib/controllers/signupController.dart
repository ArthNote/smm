
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SignupController extends GetxController {
  static SignupController get to => Get.find();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var isSelected = [false, false].obs;
  var isLoading = false.obs;
  RxString toggleButtonError = ''.obs;

  

  void setSelected(int newIndex) {
    for (int i = 0; i < isSelected.length; i++) {
      if (i == newIndex) {
        isSelected[i] = true;
      } else {
        isSelected[i] = false;
      }
    }
  }

  String? validateEmail(String? value) {
    if (!GetUtils.isEmail(value ?? '')) {
      return 'Email is not valid';
    }
    return null;
  }

  String? validateName(String? value) {
    if (GetUtils.isNullOrBlank(value) ?? true) {
      return 'Username is required';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (!GetUtils.isLengthGreaterOrEqual(value, 6)) {
      return 'Password is not valid';
    }
    return null;
  }

  bool validateToggleButtons() {
    bool isSelectedValid = isSelected.contains(true);
    toggleButtonError.value = isSelectedValid ? '' : 'Please select an option.';
    return isSelectedValid;
  }

  Future<void> signup() async {
    
  }

  @override
  void onClose() {
    // TODO: implement onClose
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
