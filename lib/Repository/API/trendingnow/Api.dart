import 'dart:convert';

import 'package:http/http.dart';

import '../../../UI/trending Now.dart';

import '../../ModelClass/TrendingNow.dart';
import '../Api_Client.dart';

class TrendingApi {
  ApiClient apiClient = ApiClient();

  Future<List<TrendingModel>> getTrending() async {
    String trendingpath = "/product/all?tag=trending";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return TrendingModel.listFromJson(jsonDecode(response.body));
  }
}
