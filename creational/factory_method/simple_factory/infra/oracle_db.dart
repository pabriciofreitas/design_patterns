import '../data/db.dart';

class OracleDB implements DB {
  @override
  String conect() {
    return "conectando OracleDB ...";
  }

  @override
  String get() {
    return "Pegou dado no OracleDB ...";
  }

  @override
  String post() {
    return "Postou dado no OracleDB ...";
  }
}
