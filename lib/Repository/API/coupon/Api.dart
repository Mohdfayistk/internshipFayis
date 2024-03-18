import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../ModelClass/CouponModel.dart';

import '../Api_Client.dart';

class CouponModelApi {
  ApiClient apiClient = ApiClient();

  Future<CouponModel> getCouponModel(String coupon, String id) async {
    String trendingpath = "/coupons/apply-coupon";
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString("UserId")!;
    var body = {"code": coupon, "userId": userId, "prodId": id};
    print(body);
    Response response =
        await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    return CouponModel.fromJson(jsonDecode(response.body));
  }
}
