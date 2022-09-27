import 'dart:developer';

import 'package:get/get.dart';
import 'package:pagination_getx/services/identity_service.dart';
import '../models/model.dart';

class MyController extends GetxController {
  RxList<Data>? data;

  Identity? identity;
  void getIdentity(int params) async {
    try {
      Identity identity;
      if (params != null) {
        identity = (await IdentityService().getData(params))!;
        print(identity);
        if (identity.data!.isNotEmpty) {
          data = RxList(identity.data as List<Data>);
        } else {
          throw Exception();
        }
      }
    } catch (e) {
      rethrow;
    }
  }
}
