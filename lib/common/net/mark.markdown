// 返回 LoginEntity
DioManager().request<LoginEntity>(
  NWMethod.POST,
  NWApi.loginPath,
  params: {"account": "421789838@qq.com", "password": "123456"},
  success: (data) {
      print("success data = $data"});
  }, error: (error) {
      print("error code = ${error.code}, massage = ${error.message}");
  }
);

// 返回 List<LoginEntity>
DioManager().requestList<LoginEntity>(
  NWMethod.POST,
  NWApi.queryListJsonPath,
  params: {"account": "421789838@qq.com", "password": "123456"},
  success: (data) {
      print("success data = $data"});
  }, error: (error) {
      print("error code = ${error.code}, massage = ${error.message}");
  }
);
