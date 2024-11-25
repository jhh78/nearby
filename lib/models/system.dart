import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'system.g.dart';

@HiveType(typeId: 0)
class SystemData extends HiveObject {
  @HiveField(0)
  final int themeMode;

  SystemData({required this.themeMode});

  ThemeMode get theme => ThemeMode.values[themeMode];

  factory SystemData.fromThemeMode(ThemeMode themeMode) {
    return SystemData(themeMode: themeMode.index);
  }
}
