import 'package:get/get.dart';
import 'package:kittycav/pages/message/controller.dart';
import 'controller.dart';

class MessageBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MessageController>(() => MessageController());
  }
}