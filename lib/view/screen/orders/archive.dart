import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/orders/archive_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../widget/orders/cardorderslistarchive.dart';

class Archive extends StatelessWidget {
  const Archive({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ArchiveControllerImp());
    return Scaffold(
        appBar: AppBar(title:const Text("Orders Archive"),),
        body: GetBuilder<ArchiveControllerImp>(builder: (controller) {
          return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          CardOrdersListArchive(listdata: controller.data[index]),
                          const SizedBox(height: 20,)
                        ],
                      );
                    }
                    )),
              ));
        }));
  }
}
