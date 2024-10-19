import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/presentation/chosen_page.dart';
import '../../view/presentation/main_page.dart';
import '../../view/presentation/profile_page.dart';
import '../../view/presentation/study_plan_page.dart';

class HomePageStateController extends GetxController {
  List<Widget> pages = [
    const MainPage(),
    const ChosenPage(),
    const StudyPlanPage(),
    const ProfilePage(),
  ];
  RxInt pageIndex = 0.obs;
  void bottomBarNavigation(int getPageIndex) {
    pageIndex.value = getPageIndex;
  }
}
