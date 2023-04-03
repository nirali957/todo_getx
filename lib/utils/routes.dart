import 'package:get/get.dart';
import 'package:todo_getx/screens/home/home_binding.dart';
import 'package:todo_getx/screens/home/home_screen.dart';
import 'package:todo_getx/screens/todo/todo_binding.dart';
import 'package:todo_getx/screens/todo/todo_screen.dart';
import 'package:todo_getx/utils/routes_name.dart';

List<GetPage<dynamic>> routesList = [
  GetPage(
    name: RoutesName.homeScreen,
    page: () => const HomeScreen(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: RoutesName.toDoScreen,
    page: () => const ToDoScreen(),
    binding: ToDoBinding(),
  ),
];
