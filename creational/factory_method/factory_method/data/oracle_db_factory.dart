import '../infra/oracle_db.dart';
import 'db.dart';
import 'db_factory.dart';

class OracleDBFactory implements DBFactory {
  @override
  DB createDB() {
    return OracleDB();
  }
}
