import 'package:dio/dio.dart';
import 'package:NihonGo/configs/config.dart' as config;

class AuthService {
  static Future<Map<String, dynamic>> login(String username, String password, String email) async {
    try {
      final response = await Dio().post('https://yourapi.com/login', data: {
        'name': username,
        'password': password,
        'email': email
      });
      return response.data;
    } catch (e) {
      return {'error': 'Login failed'};
    }
  }
}
