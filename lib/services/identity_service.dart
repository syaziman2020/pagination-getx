import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pagination_getx/models/model.dart';

class IdentityService {
  Dio dio = Dio();
  Future<Identity?>? getData(
    final int params,
  ) async {
    try {
      final response =
          await dio.get('https://reqres.in/api/users?page=$params');

      Identity result = Identity.fromJson(response.data);
      print(response.data);

      return result;
    } catch (error) {
      rethrow;
    }
  }
}
