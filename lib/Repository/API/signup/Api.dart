import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/SignUp.dart';
import '../Api_Client.dart';
import '../multi_file_api_client.dart';

class SignUpApi {
  MultiFileApiClient apiClient = MultiFileApiClient();

  Future<SignUp> getSignUp(
      String email, String username, String password) async {
    String trendingpath ="/auth/local/user/sign-up";
    var body = {"email": email, "password": password, "username": username,};
    print(body);
    Response response =
    await apiClient.uploadFiles(uploadPath: trendingpath, method: "POST", bodyData: body, files: []);

    return SignUp.fromJson(jsonDecode(response.body));
  }
}
