import 'package:flutter/material.dart';

class AppLoginStatusModel with ChangeNotifier {
  LoginStatus status = LoginStatus.Unlogin;

  void updateLoginStatus(LoginStatus value){
    status = value;
    notifyListeners();
    print("$status");
  }
}

enum LoginStatus { Unlogin, AlreadyLogin }
