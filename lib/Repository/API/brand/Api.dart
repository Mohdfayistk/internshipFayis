import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/Brand.dart';

import '../Api_Client.dart';

class BrandApi {
  ApiClient apiClient = ApiClient();

  Future<List<Brand>> getBrand() async {
    String trendingpath = "/brand/all";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Brand.listFromJson(jsonDecode(response.body));
  }
}
