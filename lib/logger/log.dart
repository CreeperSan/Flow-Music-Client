import 'package:flow_music_client/logger/log_level.dart';

void _log(dynamic content, {
  String? tag,
  LogLevel logLevel = LogLevel.Info,
}){
  String message = content.toString();

  final currentTimestamp = DateTime.now().millisecondsSinceEpoch;
  final tagString = tag == null ? '' : '【$tag】';
  final logLevelString = logLevel.toFormattedString();

  print('$currentTimestamp:$logLevelString:$tagString -> $message');
}

void logD(dynamic content, [String? tag]) => _log(content, tag: tag, logLevel: LogLevel.Debug);
void log(dynamic content, [String? tag]) => _log(content, tag: tag, logLevel: LogLevel.Info);
void logW(dynamic content, [String? tag]) => _log(content, tag: tag, logLevel: LogLevel.Waming);
void logE(dynamic content, [String? tag]) => _log(content, tag: tag, logLevel: LogLevel.Error);


