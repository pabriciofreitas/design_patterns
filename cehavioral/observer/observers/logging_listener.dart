import 'dart:io';

import '../event_listeners.dart';

//Meu sistema de log
class LoggingListener implements EventListeners {
  File _log;
  String _message;
  LoggingListener({
    required String logFileName,
    required String message,
  })  : _log = File(logFileName),
        _message = message;
  @override
  update({required String filename}) {
    _log = File(filename);
    //salvando log
    print(message);
  }

  String get message => _message + _log.path;
}
