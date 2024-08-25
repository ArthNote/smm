// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/textfieldController.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {super.key,
      required this.hint,
      required this.label,
      this.showLabel,
      this.isEnabled,
      this.icon,
      this.validate,
      this.prefixIcon,
      this.fieldController,
      required this.keyboardType,
      this.onChanged,
      this.inputFormatters,
      this.maxLength});
  final String hint;
  final String label;
  final TextInputType keyboardType;
  final bool? showLabel;
  final bool? isEnabled;
  final Widget? icon;
  final controller = Get.put(TextFieldController());
  final TextEditingController? fieldController;
  final String? Function(String?)? validate;
  final Widget? prefixIcon;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    var isPassword = keyboardType == TextInputType.visiblePassword;
    var isMultiline = keyboardType == TextInputType.multiline;
    if (isMultiline) {
      return TextFormField(
        keyboardType: keyboardType,
        obscureText: false,
        maxLines: 20,
        minLines: 1,
        readOnly: isEnabled ?? false,
        validator: validate,
        controller: fieldController,
        decoration: InputDecoration(
          labelText: showLabel != null
              ? showLabel!
                  ? label
                  : null
              : label,
          hintText: hint,
        ),
      );
    }
    if (!isPassword) {
      return TextFormField(
        keyboardType: keyboardType,
        obscureText: false,
        controller: fieldController,
        readOnly: isEnabled ?? false,
        validator: validate,
        onChanged: onChanged,
        maxLength: maxLength,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          labelText: showLabel != null
              ? showLabel!
                  ? label
                  : null
              : label,
          hintText: hint,
          suffixIcon: icon,
          prefixIcon: prefixIcon,
        ),
      );
    }
    return Obx(() {
      return TextFormField(
        keyboardType: keyboardType,
        controller: fieldController,
        obscureText: controller.passwordHidden.value,
        validator: validate,
        readOnly: isEnabled ?? false,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          suffixIcon: IconButton(
            onPressed: () {
              controller.togglePasswordVisibility();
            },
            icon: Icon(controller.passwordHidden.value
                ? Icons.visibility_off
                : Icons.visibility),
          ),
        ),
      );
    });
  }
}
