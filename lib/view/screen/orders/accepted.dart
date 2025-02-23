
import 'package:delivery/controller/orders/accepted_controller.dart';
import 'package:delivery/controller/orders/pending_controller.dart';
import 'package:delivery/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/orders/orderspendinglistcard.dart';

class OrdersAccepted extends StatelessWidget {
  const OrdersAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AcceptedControllerImp());
    return Scaffold(
        appBar: AppBar(title:const Text("Orders"),),
        body: GetBuilder<AcceptedControllerImp>(builder: (controller) {
          return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          CardOrdersList(listdata: controller.data[index]),
                          const SizedBox(height: 20,)
                        ],
                      );
                    }
                    )),
              ));
        }));
  }
}
