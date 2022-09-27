import 'package:flutter/material.dart';
import 'package:pagination_getx/card.dart';
import 'package:pagination_getx/controllers/my_controller.dart';
import 'package:get/get.dart';
import 'package:pagination_getx/services/identity_service.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagination GetX'),
        actions: [
          IconButton(
              onPressed: () {
                // myController.getIdentity(2);
                myController.getIdentity(1);
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Obx(() {
          if (myController.data!.isNotEmpty) {
            return Column(
              children: myController.data!
                  .map(
                    (e) => CardCustom(
                      name: e.firstName ?? 'no name',
                      email: e.email ?? 'no email',
                      imageUrl:
                          e.avatar ?? 'https://reqres.in/img/faces/7-image.jpg',
                    ),
                  )
                  .toList(),
            );
          } else {
            return SizedBox();
          }
        }),
      ),
    );
  }
}
