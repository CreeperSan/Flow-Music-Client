
enum LogLevel{
  Debug,
  Info,
  Waming,
  Error
}

extension LogLevelFormatter on LogLevel{

  String toFormattedString(){
    switch(this){
      case LogLevel.Debug:
        return '[Debug  ]';
      case LogLevel.Info:
        return '[Info   ]';
      case LogLevel.Waming:
        return '[Warming]';
      case LogLevel.Error:
        return '[Error  ]';
      default:
        return '[       ]';
    }
  }

}
