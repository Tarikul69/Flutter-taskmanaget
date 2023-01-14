import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class NetworkRequester {
  //get request
  Future getRequest(String url) async {
    try {
      http.Response response = await http.get(Uri.parse(url));
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
  postRequest(String url, Map<String, String> body) async {
    try {
      http.Response response = await http.post(Uri.parse(url),
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.acceptHeader: 'application.json',
          },
          body: jsonEncode(body));
    } catch (e) {
      print(e);
    }
  }
}
