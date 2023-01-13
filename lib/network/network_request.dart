import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class NetworkRequester {
  //get request
  Future getRequest(String uri) async {
    try {
      http.Response response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print('Request failed');
      }
    } catch (e) {
      print(e);
    }
  }

  //post request

}
