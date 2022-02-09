import '../event_listeners.dart';

//Meu sistema de envio de email
class EmailAlertsListener implements EventListeners {
  String _email;
  String _message;
  EmailAlertsListener({
    required String email,
    required String message,
  })  : _email = email,
        _message = message;
  @override
  update({required String filename}) {
    //Enviando mensagem para email
    print(_message + filename);
  }
}
