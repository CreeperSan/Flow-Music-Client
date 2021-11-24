import 'package:dio/dio.dart';
import 'package:flow_music_client/logger/log.dart';
import 'package:flow_music_client/network/request_method.dart';


class NetworkManager {

  NetworkManager._();

  static final Dio _dio = Dio();

  static final Map<String, Object> _header = {};

  static Future request(String url, {
    RequestMethod requestMethod = RequestMethod.Post,
    int? sendTimeout,
    int? receiveTimeout,
    ResponseType? responseType,
    String? contentType,
    Map<String, Object>? bodyParams,
    Map<String, Object>? urlParams,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiverProgress,
  }){
    return _dio.post(url,
      data: bodyParams,
      queryParameters: urlParams,
      cancelToken: cancelToken,
      options: Options(
        method: _getRequestMethod(requestMethod),
        headers: _header,
        sendTimeout: sendTimeout,
        receiveTimeout: receiveTimeout,
        responseType: responseType,
        contentType: contentType,
      ),
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiverProgress,
    ).then((value){
      logD('network response -> $value');
    }).catchError((error){
      return ;
    });
  }

  static String _getRequestMethod(RequestMethod requestMethod){
    switch(requestMethod){
      case RequestMethod.Get:
        return 'GET';
      case RequestMethod.Post:
        return 'POST';
      default:
        return 'GET';
    }
  }

}
