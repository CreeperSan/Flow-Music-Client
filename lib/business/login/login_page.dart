
import 'package:flow_music_client/business/login/controller/login_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final LoginPageController _controller = Get.put(LoginPageController());

  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Flow Music',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '账号',
                ),
                controller: _accountController,
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '密码',
                ),
                controller: _passwordController,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => CupertinoButton(
                  child: Text(_controller.isLoggingIn ? '登陆中' : '登录'),
                  onPressed: _controller.onLoginClick,
                )),
                CupertinoButton(
                  child: const Text('注册'),
                  onPressed: () => _controller.onRegisterClick(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
