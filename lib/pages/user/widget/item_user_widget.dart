part of '../../../main.dart';

class ItemUserWidget extends StatelessWidget {
  final User user;
  const ItemUserWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) => ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(user.avatar),
    ),
    title: Text(user.name),
    subtitle: Text(user.email),
  );
}