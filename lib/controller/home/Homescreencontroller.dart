
import 'package:delivery/view/screen/orders/archive.dart';
import 'package:delivery/view/screen/orders/pending.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screen/settings/settings.dart';




abstract class HomeScreenController extends GetxController {
  changePage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> listpage = [
    const Pending(),
    const Archive(),
    const Archive(),
    const Settings(),
  ];
  List<Map> bottomappbat = [
    {"title": "pending", "icon": Icons.padding_rounded},
    {"title": "settings", "icon": Icons.delivery_dining},
    {"title": "settings", "icon": Icons.archive},
    {"title": "settings", "icon": Icons.settings},
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
