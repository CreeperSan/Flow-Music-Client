
import 'dart:developer';

import 'package:flow_music_client/network/network_manager.dart';
import 'package:flow_music_client/network/urls.dart';

class AccountNetworkService {

  static Future register({
    required String email,
    required String username,
    required String password,
  }){
    return NetworkManager.request(Urls.register,
      bodyParams: {
        'username': username,
        'password': password,
        'email': email,
      }
    ).then((value){
      log('value=$value');
      return value;
    });
  }

}
