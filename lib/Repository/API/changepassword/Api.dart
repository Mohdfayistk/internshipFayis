import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/ChangePassword.dart';

import '../Api_Client.dart';


class ChangePasswordApi {
  ApiClient apiClient = ApiClient();

  Future<ChangePassword> getChangePassword(String oldPass,
      String newPass, ) async {
    String trendingpath = "/user/reset-password/cls2r4lo9000ay9m2s1ysq4h9";
    var body = {
      "oldPass":"222222",
      "newPass":"555555"
    };
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'PATCH', body);

    return ChangePassword.fromJson(jsonDecode(response.body));
  }
}
