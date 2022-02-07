import '../infra/postgres_db.dart';
import 'db.dart';
import 'db_factory.dart';

class PostgresDBFactory implements DBFactory {
  @override
  DB createDB() {
    return PostgresDB();
  }
}
