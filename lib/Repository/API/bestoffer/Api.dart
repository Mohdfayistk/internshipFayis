import 'dart:convert';

import 'package:http/http.dart';



import '../../ModelClass/BestofferModel.dart';

import '../Api_Client.dart';

class BestOfferApi {
  ApiClient apiClient = ApiClient();

  Future<List<BestOfferModel>> getBestOffer() async {
    String trendingpath = "/product/all?tag=bestOffer";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return BestOfferModel.listFromJson(jsonDecode(response.body));
  }
}