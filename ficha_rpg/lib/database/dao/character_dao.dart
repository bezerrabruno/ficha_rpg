import 'package:sqflite/sqflite.dart';

class CharacterDao {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_nome TEXT )';

  static const String _tableName = 'tarefas_notas';
  static const String _id = 'id';
  static const String _nome = 'pensamento';
}
