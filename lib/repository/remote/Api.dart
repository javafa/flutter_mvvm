
import 'dart:convert';

import 'package:http/http.dart' as http;

enum Method {get, post, put, delete, patch}

class Api {
  static var baseUrl = 'http://3.36.127.47:3000';
  static var client = http.Client();

  static var headers = {'Content-Type': 'application/json; charset=UTF-8',};

  /// url : require root "/"
  static get(String url, {Map<String, String>? headers}) {
    return _restProcess(Method.get, url, headers: headers);
  }

  static post(String url, {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return _restProcess(Method.post, url, headers: headers, body: body);
  }

  static put(String url, {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return _restProcess(Method.put, url, headers: headers, body: body);
  }

  static delete(String url, {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return _restProcess(Method.delete, url, headers: headers, body: body);
  }

  static patch(String url, {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return _restProcess(Method.patch, url, headers: headers, body: body);
  }

  ///
  static _restProcess(Method method, String url, {Map<String, String>? headers, Object? body}) {
    var realHeaders = Api.headers;
    if (headers != null) realHeaders = headers;

    var realBody = body;
    if(body != null) realBody = jsonEncode(body);

    switch(method) {
      case Method.post :
        return client.post(makeUri(url), headers: realHeaders, body: realBody);
      case Method.put :
        return client.put(makeUri(url), headers: realHeaders, body: realBody);
      case Method.delete :
        return client.delete(makeUri(url), headers: realHeaders, body: realBody);
      case Method.patch :
        return client.patch(makeUri(url), headers: realHeaders, body: realBody);
      default :
        return client.get(makeUri(url), headers: realHeaders);
    }
  }

  static Uri makeUri(String url) => Uri.parse("$baseUrl$url");
}