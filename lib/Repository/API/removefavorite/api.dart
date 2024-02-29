import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../Api_Client.dart';

class RemoveFavoriteApi {
  ApiClient apiClient = ApiClient();

  Future<void> getRemoveFavorite(
      String id,
      ) async {
    String trendingpath = "/product/wishlist/delete/$id";

    var body = {
      "Id": 'id',

    };
    print(body);

    await apiClient.invokeAPI(trendingpath, 'DELETE', jsonEncode(body));
  }
}

