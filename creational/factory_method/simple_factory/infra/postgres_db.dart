import '../data/db.dart';

class PostgresDB implements DB {
  @override
  String conect() {
    return "conectando PostgresDB ...";
  }

  @override
  String get() {
    return "Pegou dado no PostgresDB ...";
  }

  @override
  String post() {
    return "Postou dado no PostgresDB ...";
  }
}
