import 'package:get/get.dart';
import 'package:nearby/screen/body_profile.dart';
import 'package:nearby/screen/home_frame.dart';
import 'package:nearby/screen/horby_input.dart';
import 'package:nearby/screen/info_input.dart';
import 'package:nearby/screen/job_input.dart';
import 'package:nearby/screen/login.dart';
import 'package:nearby/screen/phone_check.dart';
import 'package:nearby/screen/policy.dart';
import 'package:nearby/screen/profile_input.dart';

class RouterService {
  // 로그인 화면으로 이동
  static void moveLogin() => Get.offAll(() => LoginScreen());

  // 이용약관 화면으로 이동
  static void movePolicy() => Get.to(() => const PolicyScreen());

  // 휴대폰 인증 화면으로 이동
  static void movePhoneCheck() => Get.to(() => const PhoneCheckScreen());

  // 정보 입력 화면으로 이동
  static void moveInfoInput() => Get.to(() => const InfoInputScreen());

  // 프로필 입력 화면으로 이동
  static void moveProfileInput() => Get.to(() => ProfileInputScreen);

  // Horby 입력 화면으로 이동
  static void moveHobbyInput() => Get.to(() => const HobbyInputScreen());

  // 신체 프로필 화면으로 이동
  static void moveBodyProfile() => Get.to(() => const BodyProfileScreen());

  // 직업 입력 화면으로 이동
  static void moveJobInput() => Get.to(() => const JobInputScreen());

  // 홈 화면으로 이동
  static void moveHomeLayout() => Get.offAll(() => HomeLayoutScreen(), transition: Transition.fade);
}
