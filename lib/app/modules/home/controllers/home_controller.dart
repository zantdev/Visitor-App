import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  final ImagePicker _picker = ImagePicker();
  final isImagePicked = false.obs;
  XFile? imageFile;

  imgFromCamera() async {
    final pickedFile = await _picker.pickImage(
        source: ImageSource.camera, maxWidth: 2400, imageQuality: 50);
    if (pickedFile != null) {
      isImagePicked.value = true;
      imageFile = pickedFile;
    }
    Get.back();
  }

  void increment() => count.value++;
}
