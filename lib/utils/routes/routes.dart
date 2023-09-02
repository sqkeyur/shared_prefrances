import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sharedprefapp/utils/routes/routes_name.dart';

import '../../view/home/home_binding.dart';
import '../../view/home/home_screen.dart';

List<GetPage> page = [
  GetPage(name: homeRoutes, page: () => const HomeScreen(), binding: HomeBinding()),
];
