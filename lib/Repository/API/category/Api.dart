import 'dart:convert';

import 'package:http/http.dart';

import '../../../UI/category.dart';

import '../../ModelClass/Category.dart';
import '../Api_Client.dart';

class CategoryApi {
  ApiClient apiClient = ApiClient();

  Future<List<Category>> getCategory() async {
    String trendingpath = "/category/all";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Category.listFromJson(jsonDecode(response.body));
  }
}
