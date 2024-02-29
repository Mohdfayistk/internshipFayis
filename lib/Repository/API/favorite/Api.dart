import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../Api_Client.dart';

class FavoriteApi {
  ApiClient apiClient = ApiClient();

  Future<void> getFavorite(
    String varientId,
  ) async {
    String trendingpath = "/product/wishlist/add";
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString("UserId")!;
    var body = {
      "userId": userId,
      "varientId": varientId,
    };
    print(body);

    await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));
  }
}
