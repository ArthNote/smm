// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/signupController.dart';
import 'package:smm/utils/helpers.dart';
import 'package:smm/utils/images.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/buttonLoading.dart';
import 'package:smm/widgets/myButton.dart';
import 'package:smm/widgets/myOutlineButton.dart';
import 'package:smm/widgets/myTextField.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final formController = Get.find<SignupController>();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var dark = Get.isDarkMode;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(Sizes.defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(Get.isDarkMode
                          ? Images.welcomeDark
                          : Images.welcomeLight),
                      height: HelperFunctions.getScreenHeight(context) * 0.2,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Join Us!",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 5),
                    // Text(
                    //   "Create an account to book appointments and connect with customers.",
                    //   style: Theme.of(context).textTheme.bodyMedium,
                    // ),
                    // SizedBox(height: 5),
                  ],
                ),

                /*Form*/
                Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyTextField(
                          hint: "Enter your Username",
                          label: "Username",
                          keyboardType: TextInputType.name,
                          fieldController: formController.nameController,
                          validate: formController.validateName,
                        ),
                        SizedBox(height: 20),
                        MyTextField(
                          hint: "Enter your email",
                          label: "Email",
                          keyboardType: TextInputType.emailAddress,
                          fieldController: formController.emailController,
                          validate: formController.validateEmail,
                        ),
                        SizedBox(height: 20),
                        MyTextField(
                          hint: "Enter your password",
                          label: "Password",
                          keyboardType: TextInputType.visiblePassword,
                          fieldController: formController.passwordController,
                          validate: formController.validatePassword,
                        ),
                        SizedBox(height: 20),
                        MyTextField(
                          hint: "Confirm your password",
                          label: "Confirm Password",
                          keyboardType: TextInputType.visiblePassword,
                          fieldController: formController.passwordController,
                          validate: formController.validatePassword,
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Obx(
                        () => MyButton(
                          child: formController.isLoading.value
                              ? ButtonLoading()
                              : Text("Sign Up"),
                          onPressed: formController.isLoading.value
                              ? null
                              : () {
                                  if (formKey.currentState!.validate()) {
                                    formController.signup();
                                  }
                                },
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Or", style: Theme.of(context).textTheme.bodyLarge),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: MyOutlineButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(Images.google_icon),
                              height: 20,
                            ),
                            SizedBox(width: 10),
                            Text("Sign Up with Google"),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed('/signin');
                    },
                    child: Text(
                      "Already have an account? Sign In",
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                    style: TextButton.styleFrom(
                        foregroundColor: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
