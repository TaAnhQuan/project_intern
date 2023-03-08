import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'package:project_intern/user/user_account.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{

  static final DatabaseHelper _databaseHelper = DatabaseHelper._();

  DatabaseHelper._();

  late Database db;

  factory DatabaseHelper() {
    return _databaseHelper;
  }

  Future<void> initDB() async {
    String path = await getDatabasesPath();
    db = await openDatabase(
      join(path, 'users_demo.db'),
      onCreate: (database, version) async {
        await database.execute(
          """
            CREATE TABLE users (
              id INTEGER PRIMARY KEY AUTOINCREMENT, 
              email TEXT NOT NULL,
              password TEXT NOT NULL
            )
          """,
        );
      },
      version: 1,
    );
  }

}