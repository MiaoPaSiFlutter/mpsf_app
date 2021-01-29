import 'private_config.dart';

class NetConfig {
  static const CLIENT_ID = PrivateConfig.CLIENT_ID;
  static const CLIENT_SECRET = PrivateConfig.CLIENT_SECRET;
  static const SCOPE = "openid profile CnBlogsApi";
  static const RESPONSE_TYPE = "code id_token";
  static const REDIRECT_URI = "https://oauth.cnblogs.com/auth/callback";
  static const STATE = "cnblogs.com";
  static const NONCE = "cnblogs.com";
  static const GRANT_TYPE = "authorization_code";

  static Map<String, dynamic>  getNativeLoginCommonParmers(String code) {
    return {
      "client_id": CLIENT_ID,
      "client_secret": CLIENT_SECRET,
      "redirect_uri": REDIRECT_URI,
      "grant_type": GRANT_TYPE,
      "code": code,
    };
  }
}
