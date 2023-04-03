import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/todo_model.dart';

class ToDoController extends GetxController {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  SharedPreferences? sharedPreferences;
  List<ToDoModel> appData = [];

  @override
  void onInit() {
    // TODO: implement onInit
    getInstanceData();
    update();
    super.onInit();
  }

  getInstanceData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    getData();
  }

  setDataModel() {
    appData.add(ToDoModel(
      title: titleController.text,
      description: descriptionController.text,
    ));
    update();
    setDataIn();
  }

  getData() {
    if (sharedPreferences!.containsKey("toDoData")) {
      dynamic data = sharedPreferences!.getString("toDoData");
      debugPrint("-------------->$data");
      appData = (jsonDecode(data) as List?)!.map((dynamic e) => ToDoModel.fromJson(e)).toList();
      update();
    }
  }

  setDataIn() {
    sharedPreferences!.setString("toDoData", jsonEncode(appData));
    update();
    Get.back();
  }
}
