import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';



import '../Api_Client.dart';



class CartApi {
  ApiClient apiClient = ApiClient();

  Future<void> getCart(String varientId,int quantity,
      ) async {
    String trendingpath ="/product/add-to-cart";
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId=prefs.getString("UserId")!;
    var body = {
      "userId": userId,
      "varientId":varientId,
      "quantity": quantity
    };
    print(body);

    await    apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body)
    );

  }
}
