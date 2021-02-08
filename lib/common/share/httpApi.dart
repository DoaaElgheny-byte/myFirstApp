import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class IReturn {
  final bool success = false;
  final String message = '';
  final Object data = null;
  final bool isAuthorized = false;
}

class HttpApi {
  static var baseApiUrl = 'https://tayf2021-api.birdcloud.qa/';
  static String domain = 'q0rina';
  static getApiUrl(apiName) {
    return (baseApiUrl + apiName).toString();
  }

  static Map<String, String> get headers => {
        "Content-Type": "application/json; charset=UTF-8",
        "Accept": "application/json",
        'Language': 'ar',
        'AccessToken': ''
      };
  static logging({path, response, rowBody = ""}) {
    // this.debug && console.log({ rowBody, path, response });
    return response;
  }

  static Future<IReturn> getData(url) async {
    return await http
        .get('$baseApiUrl$url', headers: headers)
        .then((value) => logging(path: url, response: value));
  }

  static Future<dynamic> postData(url, data) async {
    var response = await http.post(url, headers: headers, body: data);
    return response;
  }

  static Future<dynamic> putData(url, data) async {
    print('════════════════════════════════════════════ ');
    print(headers);
    print(url);
    print(data);
    print('════════════════════════════════════════════ ');

    var response = await http.put(url, headers: headers, body: data);
    return response;
  }

  static Future<dynamic> deleteData(url) async {
    var response = await http.delete(url, headers: headers);
    return response;
  }

  static dynamic multipartRequest(url) async {
    var response = http.MultipartRequest('POST', Uri.parse(url));
    return response;
  }

  static MultipartFile multipartFile(filename) {
    MultipartFile file = http.MultipartFile('picture',
        File(filename).readAsBytes().asStream(), File(filename).lengthSync(),
        filename: filename.split("/").last);
    return file;
  }
}
