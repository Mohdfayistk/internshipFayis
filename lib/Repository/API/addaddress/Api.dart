import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../UI/addaddress.dart';


import '../Api_Client.dart';

class AddaddressApi {
  ApiClient apiClient = ApiClient();

  Future<void> getAddaddress(
      String fullname,
      String phonenumber,
      int pincode,
      String state,
      String city ,
      String address,
      String housenumber,
      String road) async {
    String trendingpath = "/user/add-delivery-address";
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId=prefs.getString("UserId")!;
    var body = {
      "userId": userId,
      "fullName": fullname,
      "phone": phonenumber,
      "state": state,
      "city": city,
      "pincode": pincode,
      "houseNoOrBuildingName": housenumber,
      "landmark": road,
      "address": address,
      "type":"Office"
    };
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));


  }
}
