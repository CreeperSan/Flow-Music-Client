
class NetworkResponse<T> {
  static const CODE_NETWORK_ERROR = -1;
  static const CODE_SUCCESS = 200;
  static const CODE_REQUEST_ERROR = 400;
  static const CODE_NOT_FOUND = 404;
  static const CODE_SERVER_ERROR = 500;

  final int code;
  final int message;
  final T? data;

  NetworkResponse({
    required this.code,
    required this.message,
    required this.data,
  });

  bool isSuccess() => code == CODE_SUCCESS;

}


