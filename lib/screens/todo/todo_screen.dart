import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/screens/todo/todo_controller.dart';

class ToDoScreen extends GetView<ToDoController> {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo Add"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: controller.titleController,
              decoration: InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: controller.descriptionController,
              decoration: InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  // Get.toNamed(RoutesName.homeScreen);
                  controller.setDataModel();
                },
                child: const Text("Add"))
          ],
        ),
      ),
    );
  }
}
