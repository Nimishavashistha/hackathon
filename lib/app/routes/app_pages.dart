import 'package:get/get.dart';
import 'package:hackathon/app/module/auth/binding/auth_binding.dart';
import 'package:hackathon/app/module/auth/views/auth_screen.dart';
import 'package:hackathon/app/module/dashboard/binding/dashboard_binding.dart';
import 'package:hackathon/app/module/dashboard/views/dashboard_screen.dart';

part 'app_routes.dart';

abstract class AppPages {
  static var transitionDuration = const Duration(milliseconds: 300);
  static final pages = <GetPage>[
    GetPage(
        name: _Paths.authScreen,
        page: () => AuthScreen(),
        transitionDuration: transitionDuration,
        binding: AuthBinding()),
    GetPage(
        name: _Paths.dashboard,
        page: () => DashboardScreen(),
        binding: DashboardBinding(),
        transitionDuration: transitionDuration)
  ];
}
