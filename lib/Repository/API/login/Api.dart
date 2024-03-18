import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/Login.dart';
import '../Api_Client.dart';
import '../multi_file_api_client.dart';

class LoginApi {
  ApiClient apiClient = ApiClient();

  Future<Login> getLogin(String email, String password) async {
    String trendingpath = "/auth/local/user/login";
    var body = {
      "email": email,
      "password": password,
    };
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'POST1', body);

    return Login.fromJson(jsonDecode(response.body));
  }
}
