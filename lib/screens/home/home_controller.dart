import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_getx/model/todo_model.dart';

class HomeController extends GetxController {
  List<ToDoModel> appData = [];
  SharedPreferences? sharedPreferences;
  @override
  void onInit() {
    // TODO: implement onInit
    getInstanceData();
    super.onInit();
  }

  getInstanceData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    getToDoData();
  }

  getToDoData() {
    if (sharedPreferences!.containsKey("toDoData")) {
      dynamic data = sharedPreferences!.getString("toDoData");
      appData = (jsonDecode(data) as List?)!.map((dynamic e) => ToDoModel.fromJson(e)).toList();
      update();
      debugPrint("         .........  $data");
    }
  }
}
