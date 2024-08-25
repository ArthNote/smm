import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileController extends GetxController {
  static EditProfileController get to => Get.find();

  final ImagePicker imagePicker = ImagePicker();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final gender = 'Gender'.obs;
  final dob = DateTime.now().obs;
  final isLoading = false.obs;
  final imagePath = ''.obs;
  final imageID = ''.obs;

  String? validateName(String? value) {
    if (GetUtils.isNullOrBlank(value) ?? true) {
      return 'Name is required';
    }
    return null;
  }

  String? validateDate(String? value) {
    if (GetUtils.isNullOrBlank(value) ?? true) {
      return 'Date is required';
    }
    return null;
  }


  String? validateGender(String? value) {
    List<String> validGenders = ['male', 'female'];

    if (value == null || !validGenders.contains(value)) {
      return 'Gender is required';
    }
    return null;
  }

  void selectImage() async {
    await imagePicker
        .pickImage(source: ImageSource.gallery)
        .then((value) async {
      if (value != null) {
        String croppedImagePath = await cropImage(value.path);
        imagePath.value = croppedImagePath;
      }
    }).catchError((e) {
      Get.snackbar('Error', 'Failed to pick image');
    });
  }

  Future<String> cropImage(String path) async {
    CroppedFile? croppedImage = await ImageCropper().cropImage(
        sourcePath: path, aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1));
    if (croppedImage == null) {
      return '';
    }
    return croppedImage.path;
  }

  void saveChanges() async {
   
  }


  void getUserData() async {
    
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getUserData();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
