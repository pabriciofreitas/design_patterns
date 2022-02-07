import '../infra/oracle_db.dart';
import '../infra/postgres_db.dart';
import 'db.dart';

class DBSimpleFactory {
  //por tipo do retor
  DB? createDB(String db) {
    if (db == "oracle") {
      return OracleDB();
    } else if (db == "postgres") {
      return PostgresDB();
    } else {
      return null;
    }
  }
}
