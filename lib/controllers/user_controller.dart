part of '../main.dart';

class UserController extends GetxController {
  var requestState = RequestState.initial.obs;
  var userList = <User>[].obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      requestState(RequestState.loading);
      var users = await ApiService.fetchUsers();
      if (users.isNotEmpty) {
        userList.assignAll(users);
      }
    } catch(exception) {
      requestState(RequestState.failed);
    } finally {
      requestState(RequestState.loaded);
    }
  }
}
