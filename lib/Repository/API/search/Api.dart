import 'dart:convert';

import 'package:http/http.dart';




import '../../ModelClass/SearchModel.dart';
import '../Api_Client.dart';

class SearchApi {
  ApiClient apiClient = ApiClient(

  );

  Future<List<SearchModel>> getSearch(
      String id
      ) async {
    String trendingpath = "/product/search?s=$id";
    var body = {

    };
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return SearchModel.listFromJson(jsonDecode(response.body));
  }
}
