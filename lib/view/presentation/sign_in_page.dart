import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/app_text.dart';
import 'colors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: 'login'.tr,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.gray4,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 30,
                  ),
                  child: AppText(
                    text: 'Hello'.tr,
                    color: AppColors.bottomBarItemInactiveColor,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'login'.tr,
                    contentPadding: const EdgeInsets.all(15),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xFFFD1111), // Icon color
                    ),
                    hintStyle: const TextStyle(
                      color: Color(0xFF4E4E4E), // Label text color
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 20,
                  ),
                  child: AppText(
                    text: 'phone_number'.tr,
                    color: AppColors.blue,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Пароль',
                    contentPadding: const EdgeInsets.all(15),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xFFFD1111), // Icon color
                    ),
                    hintStyle: const TextStyle(
                      color: Color(0xFF4E4E4E), // Label text color
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 30,
                  ),
                  child: AppText(
                    text: 'incorrect_password'.tr,
                    color: AppColors.blue,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed('/home_page');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: AppColors.bottomBarItemActiveColor,
                    ),
                    child: AppText(
                      text: 'sign_in'.tr,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: AppColors.uiWhite,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: AppColors.progresColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 45,
                        ),
                        child: AppText(
                          text: 'abo'.tr,
                          color: AppColors.bottomBarItemInactiveColor,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: AppColors.progresColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    color: AppColors.buttonColorTwo,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 7,
                        ),
                        child: Image.asset(
                          'assets/images/facebookIcon.png',
                          width: 24,
                        ),
                      ),
                      AppText(
                        text: 'log_in_facebook'.tr,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: AppColors.uiWhite,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 25,
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    color: AppColors.uiWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04), // 16% opacity
                        offset: const Offset(0, 4), // Horizontal and vertical offset
                        blurRadius: 8, // Blur radius
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // 8% opacity
                        offset: const Offset(0, 2), // Slightly different offset
                        blurRadius: 4, // Smaller blur radius
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 7,
                        ),
                        child: Image.asset(
                          'assets/images/googleIcon.png',
                          width: 24,
                        ),
                      ),
                      AppText(
                        text: 'sign_in_google'.tr,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: AppColors.uiBlack.withOpacity(
                          0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        bottom: 20,
                      ),
                      child: AppText(
                        text: 'forgot_password'.tr,
                        color: AppColors.blue,
                      ),
                    ),
                    Padding(
                  padding: const EdgeInsets.only(
                    bottom: 40,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 7,),
                            child: AppText(
                              text: 'dont_have_account'.tr,
                              color: AppColors.bottomBarItemInactiveColor,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,

                          child: AppText(
                            textOverflow: TextOverflow.ellipsis,
                            text: 'stvoriti'.tr,
                            color: AppColors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
