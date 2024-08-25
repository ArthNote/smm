// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/signinController.dart';
import 'package:smm/utils/helpers.dart';
import 'package:smm/utils/images.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/buttonLoading.dart';
import 'package:smm/widgets/myButton.dart';
import 'package:smm/widgets/myOutlineButton.dart';
import 'package:smm/widgets/myTextField.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final formController = Get.find<SigninController>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                      image: AssetImage( Get.isDarkMode
                          ? Images.welcomeDark
                          : Images.welcomeLight),
                      height: HelperFunctions.getScreenHeight(context) * 0.2,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Welcome Back!",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 5),
                    // Text(
                    //   "Log in to manage your profile, appointments, and explore top-rated barbershops in your area.",
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                            ),
                            style: TextButton.styleFrom(
                                foregroundColor:
                                    Theme.of(context).primaryColor),
                          ),
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
                      child: MyButton(
                        child: Text("Sign In"),
                        onPressed: () {
                               Get.toNamed('/navigation');
                              },
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
                            Text("Sign In with Google"),
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
                      Get.toNamed('/signup');
                    },
                    child: Text(
                      "Don't have an account? Sign Up",
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
