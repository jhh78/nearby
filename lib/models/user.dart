class UserData {
  final String uid;

  UserData({
    required this.uid,
  });

  factory UserData.fromMap(Map<String, dynamic> data) {
    return UserData(
      uid: data['uid'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
    };
  }
}
