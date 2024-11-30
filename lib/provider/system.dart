import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:nearby/models/system.dart';
import 'package:nearby/models/user.dart';
import 'package:nearby/utils/hive.dart';

class SystemProvider extends GetxService {
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;
  late Box<SystemData> systemBox;
  late Box<UserData> userBox;

  @override
  void onInit() {
    super.onInit();
    log('SystemProvider initialized');

    _loadBox().then((_) {
      _loadTheme();
    });
  }

  Future<void> _loadBox() async {
    systemBox = await Hive.openBox<SystemData>(SYSTEM_BOX);
    userBox = await Hive.openBox<UserData>(USER_BOX);
  }

  void _loadTheme() async {
    final systemData = systemBox.get(SYSTEM_DATA);
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

  void _saveTheme() async {
    systemBox = Hive.box<SystemData>(SYSTEM_BOX);
    final systemData = systemBox.get(SYSTEM_DATA) ?? SystemData(themeMode: ThemeMode.light.index);
    systemBox.put(SYSTEM_DATA, systemData);
  }
}
