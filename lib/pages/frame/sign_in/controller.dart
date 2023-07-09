import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kittycav/common/entities/entities.dart';
import 'package:kittycav/common/routes/names.dart';
import 'package:kittycav/common/store/store.dart';
import 'package:kittycav/pages/frame/sign_in/state.dart';


class SignInController extends GetxController{
  SignInController();
  final state = SignInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'openid'
    ]
  );

  void handleSignIn(String type) async{
    // 1.email 2.google 3.facebook 4.apple, 5.phone
    try{
      if(type == "phone number"){
        if(kDebugMode){
          print("...you are logging in with phone number...");
        }
      }else if(type == "google"){
        var user = await _googleSignIn.signIn();
        if(user!=null){
          String? displayName = user.displayName;
          String email = user.email;
          String id = user.id;
          String photoUrl = user.photoUrl??"assets/icons/google.png";
          LoginRequestEntity loginPanelListRequestEntity = LoginRequestEntity();
          loginPanelListRequestEntity.avatar = photoUrl;
          loginPanelListRequestEntity.name = displayName;
          loginPanelListRequestEntity.email = email;
          loginPanelListRequestEntity.open_id = id;
          loginPanelListRequestEntity.type = 2;
          asyncPostAllData();
        }
      }else{
        if(kDebugMode){
          print("...login type not sure...");
        }
      }
    }catch(e){
      if(kDebugMode){
        print('...error with login $e');
      }
    }
  }

  asyncPostAllData() async{
    print("...lets go to message page...");
    Get.offAllNamed(AppRoutes.Message);
  }

}