import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../ModelClass/GetFavoriteModel.dart';
import '../Api_Client.dart';

class GetFavoriteApi {
  ApiClient apiClient = ApiClient();

  Future<GetFavoriteModel> getGetFavorite() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString("UserId")!;
    String trendingpath = "/product/wishlist/get?userId=$userId";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return GetFavoriteModel.fromJson(jsonDecode(response.body));
  }
}
