
import 'package:flow_music_client/business/login/controller/register_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final _controller = Get.put(RegisterPageController());

  final accountTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final passwordConfirmTextController = TextEditingController();
  final emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('注册'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 360,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '电子邮箱',
                ),
                controller: emailTextController,
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '用户名',
                ),
                controller: accountTextController,
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '密码',
                ),
                controller: passwordTextController,
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '确认密码',
                ),
                controller: passwordConfirmTextController,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => CupertinoButton(
                  child: Text(_controller.isRegistering ? '注册中' : '注册'),
                  onPressed: _controller.onRegisterClick,
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }

}
