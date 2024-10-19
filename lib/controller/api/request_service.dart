import 'package:dio/dio.dart';

class RequestService {
  static Future<Response?> fetchUsers() async {
    try {
      var dio = Dio();
      Response response = await dio.get('https://reqres.in/api/users');
      if (response.statusCode == 200) {
        return response;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
