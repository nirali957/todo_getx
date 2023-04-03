import 'package:get/get.dart';
import 'package:todo_getx/screens/todo/todo_controller.dart';

class ToDoBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<ToDoController>(ToDoController());
  }
}
