import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nearby/models/system.dart';
import 'package:nearby/screen/intro.dart';
import 'package:nearby/utils/constants.dart';
import 'package:nearby/utils/styles.dart';
import 'package:upgrader/upgrader.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await MobileAds.instance.initialize();
  await Firebase.initializeApp();
  await Upgrader.clearSavedSettings();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  final appDocumentDir = await getApplicationDocumentsDirectory();

  // Hive 초기화 및 박스 열기
  await Hive.initFlutter(appDocumentDir.path);
  Hive.registerAdapter(SystemDataAdapter());
  await Hive.openBox<SystemData>(SYSTEM_DATA);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        theme: ThemeData.light().copyWith(
          textTheme: getLightTextTheme(),
        ),
        darkTheme: ThemeData.dark().copyWith(
          textTheme: getDarkTextTheme(),
        ),
        themeMode: systemProvider.themeMode.value,
        home: UpgradeAlert(child: IntroScreen()),
      );
    });
  }
}
