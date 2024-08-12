import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:interview_biis_griya/util/enum/state/request_state.dart';
import 'dart:convert';

import 'package:interview_biis_griya/util/json_utils.dart';

part 'controllers/user_controller.dart';
part 'models/user_model.dart';
part 'pages/homepage/home_page.dart';
part 'pages/user/user_list_page.dart';
part 'pages/user/widget/item_user_widget.dart';
part 'services/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}