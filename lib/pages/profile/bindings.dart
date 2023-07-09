import 'package:get/get.dart';
import 'package:kittycav/pages/profile/controller.dart';

class ProfileBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}