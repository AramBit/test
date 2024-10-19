import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/storage.dart';
import '../components/app_text.dart';
import '../components/profile_parameters_bloc.dart';
import 'colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 30,
              ),
              padding: const EdgeInsets.all(
                20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.uiWhite,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.gray3.withOpacity(0.07),
                    spreadRadius: 0.1,
                    blurRadius: 6,
                    offset: const Offset(
                      0,
                      0,
                    ),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/edit_icon.png',
                        width: 24,
                      ),
                      Image.asset(
                        'assets/images/exitIcon.png',
                        width: 24,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 15,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/avatar_icon.png',
                        width: 120,
                      ),
                    ),
                  ),
                  AppText(
                    text: 'Байда Вишневецький',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textFieldColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 20,
                    ),
                    child: AppText(
                      text: 'username@gmail.com',
                      color: AppColors.settingsTextColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: AppText(
                      text: '${'subscription_renewal'.tr} 20.05.2024',
                      color: AppColors.gray2,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                String? locale = Storage.box.read('locale');
                if (locale == null) {
                  Storage.box.write('locale', 'en_US');
                  Get.updateLocale(
                    const Locale('en_US'),
                  );
                } else if (locale == 'en_US') {
                  Storage.box.write('locale', 'uk_UK');
                  Get.updateLocale(
                    const Locale('uk_UK'),
                  );
                } else {
                  Storage.box.write('locale', 'en_US');
                  Get.updateLocale(
                    const Locale('en_US'),
                  );
                }
              },
              child: ProfileParametersBloc(
                leftWidget: AppText(
                  text: 'application_language'.tr,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: AppColors.settingsTextColor,
                ),
                rightWidget: Row(
                  children: [
                    AppText(
                      text: 'lenguage'.tr,
                      color: AppColors.textFieldColor,
                    ),
                    Image.asset(
                      'assets/images/arrowIcon.png',
                      width: 25,
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            ProfileParametersBloc(
              leftWidget: AppText(
                text: 'change_password'.tr,
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppColors.settingsTextColor,
              ),
              rightWidget: Image.asset(
                'assets/images/arrowIcon.png',
                width: 25,
                height: 30,
              ),
            ),
            ProfileParametersBloc(
              leftWidget: AppText(
                text: 'notifications'.tr,
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppColors.settingsTextColor,
              ),
              rightWidget: Image.asset(
                'assets/images/arrowIcon.png',
                width: 25,
                height: 30,
              ),
            ),
            ProfileParametersBloc(
              leftWidget: AppText(
                text: 'invite_riends'.tr,
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppColors.settingsTextColor,
              ),
              rightWidget: Image.asset(
                'assets/images/arrowIcon.png',
                width: 25,
                height: 30,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: AppText(
                  text: 'legal_information'.tr,
                  color: AppColors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
