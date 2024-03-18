import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/Banner.dart';

import '../Api_Client.dart';

class OfferBannerApi {
  ApiClient apiClient = ApiClient();

  Future<List<BannerModel>> getOfferBanner() async {
    String trendingpath = "/banner/all?tag=bestOffer";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return BannerModel.listFromJson(jsonDecode(response.body));
  }
}
