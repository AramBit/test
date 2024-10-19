import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/getx/home_page_state_controller.dart';
import '../components/app_text.dart';
import 'colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageStateController homePageStateController =
        Get.put(HomePageStateController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Obx(() => homePageStateController
          .pages[homePageStateController.pageIndex.value]),
      bottomNavigationBar: Container(
        height: 80,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(
          top: 10,
        ),
        decoration: BoxDecoration(
          color: AppColors.uiWhite,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.bottomBarShadowColor,
              blurRadius: 4,
              offset: const Offset(8, 8),
            ),
          ],
        ),
        child: Obx(
          () => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      homePageStateController.bottomBarNavigation(0);
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Learn.png',
                            width: 24,
                            color: homePageStateController.pageIndex.value == 0
                                ? AppColors.bottomBarItemActiveColor
                                : AppColors.bottomBarItemInactiveColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                            child: AppText(
                              text: 'training'.tr,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color:
                                  homePageStateController.pageIndex.value == 0
                                      ? AppColors.bottomBarItemActiveColor
                                      : AppColors.bottomBarItemInactiveColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homePageStateController.bottomBarNavigation(1);
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Favorites.png',
                            color: homePageStateController.pageIndex.value == 1
                                ? AppColors.bottomBarItemActiveColor
                                : AppColors.bottomBarItemInactiveColor,
                            width: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                            child: AppText(
                              text: 'obrahne'.tr,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color:
                                  homePageStateController.pageIndex.value == 1
                                      ? AppColors.bottomBarItemActiveColor
                                      : AppColors.bottomBarItemInactiveColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homePageStateController.bottomBarNavigation(2);
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Roadmap.png',
                            color: homePageStateController.pageIndex.value == 2
                                ? AppColors.bottomBarItemActiveColor
                                : AppColors.bottomBarItemInactiveColor,
                            width: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                            child: AppText(
                              text: 'training_plan'.tr,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color:
                                  homePageStateController.pageIndex.value == 2
                                      ? AppColors.bottomBarItemActiveColor
                                      : AppColors.bottomBarItemInactiveColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homePageStateController.bottomBarNavigation(3);
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/User.png',
                            color: homePageStateController.pageIndex.value == 3
                                ? AppColors.bottomBarItemActiveColor
                                : AppColors.bottomBarItemInactiveColor,
                            width: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                            child: AppText(
                              text: 'profile'.tr,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color:
                                  homePageStateController.pageIndex.value == 3
                                      ? AppColors.bottomBarItemActiveColor
                                      : AppColors.bottomBarItemInactiveColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
