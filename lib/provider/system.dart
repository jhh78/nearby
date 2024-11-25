import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:nearby/models/system.dart';

class SystemProvider extends GetxService {
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;
  late Box<SystemData> systemBox;

  @override
  void onInit() {
    super.onInit();
    log('SystemProvider initialized');
    _loadTheme();
  }

  void _loadTheme() async {
    systemBox = await Hive.openBox<SystemData>('systemBox');
    final systemData = systemBox.get('themeData');
    if (systemData != null) {
      themeMode.value = systemData.theme;
    } else {
      themeMode.value = ThemeMode.light;
    }
  }

  void toggleTheme() {
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
    } else {
      themeMode.value = ThemeMode.light;
    }
    _saveTheme();
  }

  void _saveTheme() {
    final systemData = SystemData.fromThemeMode(themeMode.value);
    systemBox.put('themeData', systemData);
  }
}
