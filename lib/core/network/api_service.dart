import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  static const String baseUrl = "https://openlibrary.org";

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
