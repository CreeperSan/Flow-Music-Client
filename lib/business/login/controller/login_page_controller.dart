import 'package:flow_music_client/business/login/register_page.dart';
import 'package:flow_music_client/navigator/navigator.dart';
import 'package:flow_music_client/toast/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {

  final _isLoggingIn = false.obs;
  bool get isLoggingIn => _isLoggingIn.value;
  set isLoggingIn(bool value) => _isLoggingIn.value = value;

  void onLoginClick(){

    if(isLoggingIn){
      toast('已在登陆中');
      return;
    }

    isLoggingIn = true;
  }

  void onRegisterClick(BuildContext context){
    pushPage(context, RegisterPage());
  }

}

