import 'package:get/get.dart';
import 'package:sharedprefapp/view/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<HomeController>(HomeController());
  }
}
