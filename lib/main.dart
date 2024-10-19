import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/translations.dart';
import 'model/storage.dart';
import 'view/presentation/home_page.dart';
import 'view/presentation/sign_in_page.dart';

void main() async {
  await Storage.initBox();
  await AppTranslations.initTranslations();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const SignInPage()),
        GetPage(name: '/home_page', page: () => const HomePage()),
      ],
      translations: AppTranslations(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale(Storage.box.read('locale') ?? 'uk_UK', 'UK'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}