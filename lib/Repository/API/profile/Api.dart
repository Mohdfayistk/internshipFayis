import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/Profile.dart';
import '../Api_Client.dart';

class ProfileApi {
  ApiClient apiClient = ApiClient();

  Future<Profile> getProfile() async {
    String trendingpath = "/user/cls2r4lo9000ay9m2s1ysq4h9";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Profile.fromJson(jsonDecode(response.body));
  }
}
