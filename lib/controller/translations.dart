import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  static Map<String, Map<String, String>> translations = {};

  static Future<void> initTranslations() async {
    String enJson =
        await rootBundle.loadString('assets/localization/en_US.json');
    Map<String, dynamic> enMap = json.decode(enJson);
    translations['en_US'] =
        enMap.map((key, value) => MapEntry(key, value.toString()));

    String ruJson =
        await rootBundle.loadString('assets/localization/uk_UK.json');
    Map<String, dynamic> ruMap = json.decode(ruJson);
    translations['uk_UK'] =
        ruMap.map((key, value) => MapEntry(key, value.toString()));
  }

  @override
  Map<String, Map<String, String>> get keys => translations;
}