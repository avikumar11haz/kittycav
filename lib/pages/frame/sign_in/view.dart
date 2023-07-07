
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kittycav/pages/frame/welcome/controller.dart';

class SignInPage extends GetView<WelcomeController> {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Sign in page"),
      ),
    );
  }
}
