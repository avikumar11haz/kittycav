import 'package:get/get.dart';
import 'package:kittycav/common/routes/names.dart';
import 'package:kittycav/pages/frame/welcome/state.dart';

class WelcomeController extends GetxController{
  WelcomeController();
  final title = "kittycav .";
  final state = WelcomeState();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Future.delayed(
        const Duration(seconds: 3), ()=> Get.offAllNamed(AppRoutes.Message));
  }
}