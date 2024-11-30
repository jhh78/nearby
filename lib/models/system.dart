import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nearby/models/user.dart';

part 'system.g.dart';

@HiveType(typeId: 0)
class SystemData extends HiveObject {
  @HiveField(0)
  final int themeMode;

  SystemData({
    required this.themeMode,
  });

  ThemeMode get theme => ThemeMode.values[themeMode];

  Map<String, dynamic> toMap() {
    return {
      'themeMode': themeMode,
    };
  }
}
