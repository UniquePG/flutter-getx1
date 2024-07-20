import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  // for image path
  RxString imgPath = "".obs;

  Future getCameraImage() async {
    final ImagePicker picker = ImagePicker(); // initialize image picker

    final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      imgPath.value = image.path.toString();
    }
  }

  Future getGalleryImage() async {
    final ImagePicker picker = ImagePicker(); // initialize image picker

    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      imgPath.value = image.path.toString();
    }
  }

  Future removeImage() async {
    imgPath.value = "";
  }
}
