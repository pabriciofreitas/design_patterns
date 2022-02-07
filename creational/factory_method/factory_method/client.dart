import 'data/db.dart';
import 'data/db_factory.dart';
import 'data/oracle_db_factory.dart';
import 'data/postgres_db_factory.dart';

void main() {
  late DB db;
  //
  DBFactory oracleDBFactory = OracleDBFactory();
  DBFactory postgresDBFactory = PostgresDBFactory();
  //
  db = oracleDBFactory.createDB();
  print(db.conect());
  //
  db = postgresDBFactory.createDB();
  print(db.conect());
}
