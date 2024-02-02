import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

// import 'package:shared_preferences/shared_preferences.dart';
import '../../main.dart';

class MultiFileApiClient {
  Future<http.Response> uploadFiles({
    required List<File> files,
    required String uploadPath,
    required String method,
    required Map<String, dynamic>? bodyData,
  }) async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // final String token = prefs.getString('Token').toString();
    Map<String, String> headerParams = {
      // "Authorization": "Bearer $token",
      "Accept": "application/json",
      "Content-Type": "application/x-www-form-urlencoded",
    };

    print('Upload Path: $uploadPath');

    var request =
        http.MultipartRequest(method, Uri.parse(basePath + uploadPath));
    request.headers.addAll(headerParams);

    print("Request URL: ${request.url}");

    for (int i = 0; i < files.length; i++) {
      var multipartFile =
          await http.MultipartFile.fromPath("files", files[i].path);
      request.files.add(multipartFile);
    }

    if (bodyData != null) {
      bodyData.forEach((key, value) {
        if (value is String) {
          request.fields[key] = value;
        } else {
          request.fields[key] = value;
        }
      });
    }

    try {
      http.StreamedResponse res = await request.send();
      print("Response: $res");

      http.Response responsed = await http.Response.fromStream(res);
      print("Response Status Code: ${responsed.statusCode}");
      print("Response Body: ${responsed.body}");

      final responseData = json.decode(responsed.body);

      if (responsed.statusCode == 200) {
        print('Success');
        print(responseData);
      } else {
        print('Error');
      }

      print("Reason: $res");
      return responsed;
    } catch (e) {
      print('Error during request: $e');
      return http.Response('Error during request: $e', 500);
    }
  }
}
