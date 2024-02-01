import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/Login.dart';
import '../Api_Client.dart';
import '../multi_file_api_client.dart';


class LoginApi {
  MultiFileApiClient apiClient = MultiFileApiClient();

  Future<Login> getLogin(
      String email,  String password) async {
    String trendingpath ="/auth/local/user/login";
    var body = {"email": email, "password": password, };
    print(body);
    Response response =
    await apiClient.uploadFiles(uploadPath: trendingpath, method: "POST", bodyData: body, files: []);

    return Login.fromJson(jsonDecode(response.body));
  }
}
