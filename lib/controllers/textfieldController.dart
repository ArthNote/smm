import 'package:get/get.dart';

class TextFieldController extends GetxController {
  static TextFieldController get instance => Get.find();

  var passwordHidden = true.obs;

  void togglePasswordVisibility() {
    passwordHidden.value = !passwordHidden.value;
  }
}
