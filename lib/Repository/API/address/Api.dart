import 'dart:convert';

import 'package:http/http.dart';



import '../../ModelClass/Address.dart';

import '../Api_Client.dart';

class AddressApi {
  ApiClient apiClient = ApiClient();

  Future<List<Address>> getAddress() async {
    String trendingpath = "/user/delivery-address/all?userId=cls2r4lo9000ay9m2s1ysq4h9";
    var body = {};
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Address.listFromJson(jsonDecode(response.body));
  }
}