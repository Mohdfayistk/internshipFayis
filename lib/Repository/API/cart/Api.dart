import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/CartModel.dart';

import '../Api_Client.dart';



class CartApi {
  ApiClient apiClient = ApiClient();

  Future<CartModel> getCart(String varientId,int quantity,
      ) async {
    String trendingpath ="/product/add-to-cart";
    var body = {
      "userId": "cls1eb6mg0006y9m22gtc827q",
      "varientId": "clswpot1q005ly9m2t5ycpjpd",
      "quantity": 1
    };
    print(body);
    Response response =
    await    apiClient.invokeAPI(trendingpath, 'POST', body
    );

    return CartModel.fromJson(jsonDecode(response.body));
  }
}
