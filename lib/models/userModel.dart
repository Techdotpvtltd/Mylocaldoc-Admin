class UserModel {
  String id = '';
  DateTime dob = DateTime(1998);
  DateTime lastActive = DateTime(1998);
  String email = '';
  String fcm = '';
  String initialPassword = '';
  String profileImg = '';
  String address = '';
  String name = '';
  String username = '';
  int? phone;
  String loginType = "email";
  String bio = "";
  bool enable = true;
  UserModel();

  UserModel.toModel(jsonMap) {
    id = jsonMap['id'];
    enable = jsonMap['enable'] ?? true;
    phone = jsonMap['phone'];
    username = jsonMap['username'];
    dob = jsonMap['dob'].toDate();
    lastActive = jsonMap['lastActive'].toDate();
    email = jsonMap['email'];
    fcm = jsonMap['fcm'];
    bio = jsonMap['bio'];
    initialPassword = jsonMap['initialPassword'];
    loginType = jsonMap['loginType'];
    profileImg = jsonMap['profileImg'];
    address = jsonMap['address'] ?? "";
    name = jsonMap['name'] ?? "";
  }

  Map<String, dynamic> toJSON() {
    Map<String, dynamic> jsonMap = <String, dynamic>{};
    jsonMap['id'] = id;
    jsonMap['username'] = username;
    jsonMap['name'] = name;
    jsonMap['address'] = address;
    jsonMap['phone'] = phone;
    jsonMap['bio'] = bio;
    jsonMap['loginType'] = loginType;
    jsonMap['dob'] = dob;
    jsonMap['fcm'] = fcm;
    jsonMap['name'] = name;
    jsonMap['lastActive'] = lastActive;
    jsonMap['email'] = email;
    jsonMap['initialPassword'] = initialPassword;
    jsonMap['profileImg'] = profileImg;
    jsonMap['searchParameter'] = generateArray(username);
    return jsonMap;
  }
}

List<String> generateArray(String name, [bool subSearch = false]) {
  name = name.toLowerCase();
  List<String> list = [];
  for (int i = 0; i < name.length; i++) {
    list.add(name.substring(0, i + 1));
  }
  if (subSearch) {
    for (String test in name.split(' ')) {
      for (int i = 0; i < test.length; i++) {
        list.add(test.substring(0, i + 1));
      }
    }
  }
  return list;
}
