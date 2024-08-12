part of '../../main.dart';

class UserListPage extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: Obx(() {
        switch(userController.requestState.value) {
          case RequestState.loading:
            return const Center(child: CircularProgressIndicator());
          case RequestState.loaded:
            return ListView.builder(
              itemCount: userController.userList.length,
              itemBuilder: (context, index) {
                var user = userController.userList[index];
                return ItemUserWidget(user: user);
              },
            );
          case RequestState.failed:
            return const Center(child: Text('Failed to load users'));
          default:
            return Container();
        }
      }),
    );
  }
}