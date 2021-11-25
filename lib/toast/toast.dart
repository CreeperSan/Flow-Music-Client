

import 'package:oktoast/oktoast.dart';

void toast(dynamic message){
  showToast(message?.toString() ?? 'Null');
}
