import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
class UserData extends HiveObject {
  @HiveField(0)
  String? authType;

  @HiveField(1)
  String? uid;

  UserData({
    this.authType,
    this.uid,
  });

  String get authTypeValue => authType ?? '';
  String get userId => uid ?? '';

  Map<String, dynamic> toMap() {
    return {
      'authType': authType,
      'uid': uid,
    };
  }
}
