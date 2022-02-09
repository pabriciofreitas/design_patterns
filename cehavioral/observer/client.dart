import 'editor.dart';
import 'observers/email_alerts_listener.dart';
import 'observers/logging_listener.dart';

void main() {
  final editor = Editor();
  //
  final logger = LoggingListener(
      logFileName: "log.txt", message: "Alguém abriu o arquivo: ");
  editor.events?.subscribe(eventType: "open", listener: logger);
  editor.openFile("log.txt");

  //
  final emailAlerts = EmailAlertsListener(
      email: "pabricio2000@gmail.com", message: "Alguém alterou o arquivo: ");
  editor.events?.subscribe(eventType: "save", listener: emailAlerts);
  editor.saveFile();
}
