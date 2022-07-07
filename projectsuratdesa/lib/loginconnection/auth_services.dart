import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:projectsuratdesa/loginconnection/globals.dart';

class AuthServices {
  static Future<http.Response> register(
      String name, String email, String password) async {
    Map data = {
      "name": name,
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> login(String email, String password) async {
    Map data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> logout(String email, String password) async {
    Map data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/logout');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}
//CODINGAN AUTENTIKASI AKUN UNTUK REGISTRASI DAN LOGIN
//CODINGAN INI TERHUBUNG DENGAN API YANG TELAH DI BUAT PADA FILE API (projectsidesa-api)
//CODINGAN INI NANTI AKAN DI PANGGIL PADA  loginscreen.dart dan registerscreen.dart