import 'dart:developer';

import 'package:bloc_test/constants/core.dart';
import 'package:dio/dio.dart';

class CharactersApiServices {
  late final Dio dio;

  CharactersApiServices() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
      ),
    );
  }

  // Feching all chars
  Future<List<dynamic>> getAll() async {
    try {
      final Response response = await dio.get('/characters');
      return response.data;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
