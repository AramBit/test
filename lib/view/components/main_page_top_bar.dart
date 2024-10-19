import 'package:flutter/material.dart';

import '../presentation/colors.dart';
import 'app_text.dart';

class MainPageTopBar extends StatelessWidget {
  const MainPageTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 25,
            top: 10,
          ),
          child: Image.asset(
            'assets/images/poland_icon.png',
            width: 44,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: AppText(
                    text: 'Польська',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blue,
                  ),
                ),
                Image.asset(
                  'assets/images/Vector.png',
                  width: 9,
                  height: 5,
                ),
              ],
            ),
            AppText(
              text: 'Лікар (В2)',
              color: AppColors.textFieldColor,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 6,
                    decoration: BoxDecoration(
                      color: AppColors.progresColor,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                    ),
                    child: AppText(
                      text: '1%',
                      color: AppColors.textFieldColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          alignment: Alignment.center,
          width: 70,
          height: 70,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
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
                            blurRadius:
                                6), // no shadow color set, defaults to black
                      ]),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/notification_icon.png',
                    width: 20,
                    height: 24,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.center,
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.blue,
                  ),
                  child: const AppText(
                    text: '7',
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
