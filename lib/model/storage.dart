import 'package:get_storage/get_storage.dart';

class Storage {
  static GetStorage box = GetStorage('storageBox');

  static Future<void> initBox() async {
   await GetStorage.init('storageBox');
  }
}