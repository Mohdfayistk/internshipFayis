import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/Banner.dart';

import '../Api_Client.dart';

class BannerApi {
  ApiClient apiClient = ApiClient();

  Future<List<BannerModel>> getBanner() async {
    String trendingpath = "/banner/all";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return BannerModel.listFromJson(jsonDecode(response.body));
  }
}
