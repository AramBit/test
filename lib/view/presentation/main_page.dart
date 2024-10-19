import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_for_job/view/components/app_text.dart';
import '../../controller/getx/main_page_controller.dart';
import '../components/main_page_top_bar.dart';
import 'colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: MainPageTopBar(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            width: double.maxFinite,
            height: 1,
            color: AppColors.progresColor,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16,
              ),
              border: Border.all(
                width: 1,
                color: AppColors.buttonColor,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Image.asset(
                            'assets/images/subscription_icon.png',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 7),
                              child: AppText(
                                text: 'we_are_glad'.tr,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.bottomBarItemInactiveColor,
                              ),
                            ),
                            AppText(
                              text: 'you_have'.tr,
                              fontSize: 18,
                              textAlign: TextAlign.start,
                              textOverflow: null,
                              fontWeight: FontWeight.w700,
                              color: AppColors.settingsTextColor,
                            ),
                            AppText(
                              textOverflow: null,
                              textAlign: TextAlign.start,
                              text: 'access_to'.tr,
                              color: AppColors.textFieldColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    color: AppColors.buttonColor,
                  ),
                  child: AppText(
                    text: 'buy_subscription'.tr,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.uiWhite,
                  ),
                ),
              ],
            ),
          ),
          GetBuilder<MainPageController>(
              init: MainPageController(),
              initState: (state) {
                WidgetsBinding.instance.addPostFrameCallback((_) {});
              },
              builder: (controller) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 7),
                                child: AppText(
                                  text: 'section'.tr,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.settingsTextColor,
                                ),
                              ),
                              AppText(
                                text: 'start_learning'.tr,
                                color: AppColors.gray1,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.openUsersList();
                            },
                            child: Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.uiWhite,
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.bottomBarItemActiveColor
                                          .withOpacity(0.1),
                                      spreadRadius: 0.1,
                                      blurRadius: 6),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Transform.rotate(
                                angle: controller.usersListIsClosed? 3 * pi: 0,
                                child: Image.asset(
                                  'assets/images/arrow.png',
                                  width: 12,
                                  height: 7,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: controller.usersListIsClosed ? null : 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        children: List.generate(
                          controller.users.length,
                          (index) {
                            return Container(
                              margin: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.uiWhite,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.bottomBarItemActiveColor
                                        .withOpacity(0.07),
                                    spreadRadius: 0.1,
                                    blurRadius: 6,
                                    offset: const Offset(
                                      4,
                                      4,
                                    ),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      right: 15,
                                    ),
                                    width: 80,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        bottomLeft: Radius.circular(16),
                                      ),
                                      child: Image.network(
                                        controller.users[index].avatar,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        text: controller.users[index].firstName,
                                        color: AppColors.gray2,
                                      ),
                                      AppText(
                                        text: controller.users[index].lastName,
                                        color: AppColors.settingsTextColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
