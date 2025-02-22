
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screen/home/home.dart';
import '../../view/screen/settings/settings.dart';




abstract class HomeScreenController extends GetxController {
  changePage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> listpage = [
    const Home(),
    const Settings(),
  ];
  List<Map> bottomappbat = [
    {"title": "home", "icon": Icons.home},
    {"title": "settings", "icon": Icons.settings},
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
