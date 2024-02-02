import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/SignUp.dart';
import '../Api_Client.dart';
import '../multi_file_api_client.dart';

class SignUpApi {
  ApiClient apiClient = ApiClient();

  Future<SignUp> getSignUp(
      String email, String username, String password) async {
    String trendingpath ="/auth/local/user/sign-up";
    var body = {"email": email, "password": password, "username": username,};
    print(body);
    Response response =
    await apiClient.invokeAPI(trendingpath, 'POST', body);

    return SignUp.fromJson(jsonDecode(response.body));
  }
}
