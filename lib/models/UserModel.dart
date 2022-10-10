// ignore_for_file: file_names

import 'dart:core';

class UserModel {
  late String fullName;
  late String password;
  late int age;
  late int isLogout;
  int rate = 0;

  UserModel({
    required this.age,
    required this.fullName,
    required this.password,
    required this.isLogout,
    required this.rate,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    fullName = json["fullName"];
    password = json["password"];
    isLogout = json["isLogout"];
    age = json["age"];
    rate = json["rate"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['age'] = age;
    data['password'] = password;
    data['isLogout'] = isLogout;
    data['rate'] = rate;
    return data;
  }

  get getfullName => fullName;

  set setfullName(fullName) => this.fullName = fullName;

  get getPassword => password;

  set setPassword(password) => this.password = password;

  get getAge => age;

  set setAge(age) => this.age = age;

  get getRate => rate;

  set setRate(rate) => this.rate = rate;

  get getIsLogOut => isLogout;

  set setIsLogOut(isLogout) => this.isLogout = isLogout;
}
