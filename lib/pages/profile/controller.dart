import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kittycav/common/routes/names.dart';
import 'package:kittycav/common/store/store.dart';
import 'package:kittycav/pages/profile/index.dart';

class ProfileController extends GetxController{
  ProfileController();
  //final title = "kittycav .";
  final state = ProfileState();



  Future<void> goLogout() async {
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }

}