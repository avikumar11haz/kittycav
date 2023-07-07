import 'package:get/get.dart';
import 'package:kittycav/pages/frame/sign_in/controller.dart';


class SignInBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SignInController>(() => SignInController());
  }
}