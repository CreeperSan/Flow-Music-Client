
import 'package:flow_music_client/network/account/account_network_service.dart';
import 'package:flow_music_client/toast/toast.dart';
import 'package:get/get.dart';

class RegisterPageController extends GetxController {

  final _isRegistering = false.obs;
  bool get isRegistering => _isRegistering.value;
  set isRegistering(bool value) => _isRegistering.value = value;

  void onRegisterClick(){

    if(isRegistering){
      toast('已在注册中');
      return;
    }
    isRegistering = true;

    AccountNetworkService.register(
      email: '123',
      username: 'asdasd',
      password: 'asdasd',
    ).then((value){
      isRegistering = false;
    }).catchError((error){
      isRegistering = false;
    });

  }

}
