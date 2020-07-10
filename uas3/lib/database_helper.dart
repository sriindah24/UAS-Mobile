import 'dart:async'; 
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'catatan.dart';

 
class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
 
  factory DatabaseHelper() => _instance;
 
  final String tableCatatan = 'catatanTable';
  final String columnId = 'id';
  final String columnMatkul = 'matkul';
  final String columnTugas = 'tugas';
  final String columnDeadline = 'deadline';
 
  static Database _db;
 
  DatabaseHelper.internal();
 
  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
 
    return _db;
  }
 
  initDb() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'catatans.db');
 

 
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }
 
  void _onCreate(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $tableCatatan($columnId INTEGER PRIMARY KEY, $columnMatkul TEXT, $columnTugas TEXT, $columnDeadline TEXT)');
  }
 
  Future<int> saveCatatan(Catatan catatan) async {
    var dbClient = await db;
    var result = await dbClient.insert(tableCatatan, catatan.toMap());

    return result;
  }
 
  Future<List> getAllCatatans() async {
    var dbClient = await db;
    var result = await dbClient.query(tableCatatan, columns: [columnId, columnMatkul, columnTugas, columnDeadline]);

 
    return result.toList();
  }
 
  Future<int> getCount() async {
    var dbClient = await db;
    return Sqflite.firstIntValue(await dbClient.rawQuery('SELECT COUNT(*) FROM $tableCatatan'));
  }
 
  Future<Catatan> getCatatan(int id) async {
    var dbClient = await db;
    List<Map> result = await dbClient.query(tableCatatan,
        columns: [columnId, columnMatkul, columnTugas, columnDeadline],
        where: '$columnId = ?',
        whereArgs: [id]);

    if (result.length > 0) {
      return new Catatan.fromMap(result.first);
    }
 
    return null;
  }
 
  Future<int> deleteCatatan(int id) async {
    var dbClient = await db;
    return await dbClient.delete(tableCatatan, where: '$columnId = ?', whereArgs: [id]);
   }
 
  Future<int> updateCatatan(Catatan catatan) async {
    var dbClient = await db;
    return await dbClient.update(tableCatatan, catatan.toMap(), where: "$columnId = ?", whereArgs: [catatan.id]);
 }
 
  Future close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}