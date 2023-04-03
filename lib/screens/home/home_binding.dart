import 'package:get/get.dart';
import 'package:todo_getx/screens/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<HomeController>(HomeController());
  }
}
