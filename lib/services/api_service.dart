part of '../main.dart';

class ApiService {
  static const String url = 'https://reqres.in/api/users';

  static Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(url));

    switch(response.statusCode) {
      case 200:
        return JsonUtils.convertList(json.decode(response.body)['data'], User.fromJson);
      default:
        throw Exception('Failed to load users');
    }
  }
}
