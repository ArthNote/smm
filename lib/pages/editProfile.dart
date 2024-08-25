import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smm/controllers/editProfileController.dart';
import 'package:smm/utils/myColors.dart';
import 'package:smm/utils/sizes.dart';
import 'package:smm/widgets/myAppBar.dart';
import 'package:smm/widgets/myButton.dart';
import 'package:smm/widgets/myTextField.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final controller = Get.find<EditProfileController>();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    bool isDark = Get.isDarkMode;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          MyAppBar(
            showBackButton: true,
            title: Text('Edit Profile'),
            centerTitle: true,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: Sizes.defaultPadding * 2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 15),
                  Stack(
                    children: [
                     CircleAvatar(
                        radius: 60,
                        child: Icon(
                          Icons.person,
                          color: Theme.of(context).primaryColor,
                          size: 50,
                        ),
                        backgroundColor: Theme.of(context).cardColor,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () => controller.selectImage(),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: Icon(
                              Icons.camera,
                              color: isDark ? darkBg : lightBg,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Profile name',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 25),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 0.5,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.defaultPadding),
                    child: Form(
                      key: formKey,
                      child: Obx(
                        () => Column(
                          children: [
                            MyTextField(
                              hint: 'Username',
                              label: 'Username',
                              keyboardType: TextInputType.name,
                              fieldController: controller.nameController,
                              validate: controller.validateName,
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: DropdownButtonFormField(
                                    validator: controller.validateGender,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 17),
                                    ),
                                    isExpanded: true,
                                    itemHeight: 60,
                                    value: controller.gender.value,
                                    onChanged: (value) =>
                                        controller.gender.value = value!,
                                    items: [
                                      DropdownMenuItem(
                                        enabled: false,
                                        child: Text(
                                          'Gender',
                                          style: TextStyle(
                                            color: isDark
                                                ? Colors.grey
                                                : Colors.grey.shade700,
                                          ),
                                        ),
                                        value: 'Gender',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('male'),
                                        value: 'male',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('female'),
                                        value: 'female',
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: MyTextField(
                                    hint: 'Date of Birth',
                                    label: 'Date of Birth',
                                    isEnabled: true,
                                    keyboardType: TextInputType.datetime,
                                    fieldController: controller.dobController,
                                    validate: controller.validateDate,
                                    icon: IconButton(
                                      onPressed: () async {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(3000),
                                        ).then((value) {
                                          if (value != null) {
                                            controller.dobController.text =
                                                value.toString().split(' ')[0];
                                            controller.dob.value = value;
                                          }
                                        });
                                      },
                                      icon: Icon(Icons.calendar_month),
                                      splashRadius: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: MyButton(
                                child:  Text('Save Changes'),
                                onPressed:() {
                                        if (formKey.currentState!.validate()) {
                                          controller.saveChanges();
                                        } else {
                                          Get.snackbar(
                                            'Error',
                                            'Please fill all the fields',
                                            backgroundColor: Colors.red,
                                            colorText: Colors.white,
                                          );
                                        }
                                      },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
