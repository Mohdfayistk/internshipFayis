import 'dart:convert';

import '../Api_Client.dart';

class RemoveCartApi {
  ApiClient apiClient = ApiClient();

  Future<void> getRemoveCart(
      String id,
      ) async {
    String trendingpath = "/product/remove-from-cart/$id";

    var body = {

    };
    print(body);

    await apiClient.invokeAPI(trendingpath, 'DELETE', jsonEncode(body));
  }
}