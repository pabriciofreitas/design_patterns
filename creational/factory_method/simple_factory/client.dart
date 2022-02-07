import 'data/db.dart';
import 'data/db_simple_factory.dart';

void main() {
  late DB? db;
  //
  db = DBSimpleFactory().createDB("oracle");

  print(db?.conect());
  //
  db = DBSimpleFactory().createDB("postgres");

  print(db?.conect());
}
