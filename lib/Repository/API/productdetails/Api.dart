import 'dart:convert';

import 'package:http/http.dart';

import '../../ModelClass/ProductDetailsModel.dart';
import '../Api_Client.dart';

class ProductDetailsApi {
  ApiClient apiClient = ApiClient();

  Future<ProductDetailsModel> getProductDetails(String id) async {
    String trendingpath = "/product/${id}";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return ProductDetailsModel.fromJson(jsonDecode(response.body));
  }
}
