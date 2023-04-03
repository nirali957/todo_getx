import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/screens/home/home_controller.dart';
import 'package:todo_getx/utils/routes_name.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text("Title: ${controller.appData[index].title}"),
                subtitle: Text("Des: ${controller.appData[index].description}"),
                tileColor: Colors.lightGreenAccent.shade100,
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
          itemCount: controller.appData.length),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(RoutesName.toDoScreen);
          },
          child: const Icon(Icons.add)),
    );
  }
}
