import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../ModelClass/GetCartModel.dart';
import '../Api_Client.dart';

class GetCartApi {
  ApiClient apiClient = ApiClient();

  Future<GetCartModel> getGetCart() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString("UserId")!;
    String trendingpath = "/product/cart/$userId";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return GetCartModel.fromJson(jsonDecode(response.body));
  }
}
