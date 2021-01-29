import 'package:mpsf_app/common/config/config.dart';
import 'package:mpsf_app/common/local/local_storage.dart';

class AppManager {
    factory AppManager() => _getInstance();
  static AppManager get instance => _getInstance();
  static AppManager _instance;
  AppManager._internal() {
    
  }
  bool isLogin;

  static AppManager _getInstance() {
    if (_instance == null) {
      _instance = new AppManager._internal();
    }
    return _instance;
  }


}