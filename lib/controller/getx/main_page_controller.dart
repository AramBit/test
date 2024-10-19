import 'package:get/get.dart';

import '../../model/user_model.dart';
import '../api/request_service.dart';

class MainPageController extends GetxController {
  List<Data> users = <Data>[];
  bool usersListIsClosed = false;
  void getUsers() async {
    final response = await RequestService.fetchUsers();
    User user = User.fromJson(response!.data);
    for (var e in user.data) {
      users.add(e);
    }
    update();
  }

  void openUsersList() {
    usersListIsClosed = !usersListIsClosed;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getUsers();
  }
}
