part of 'app_pages.dart';

abstract class AppRoutes {
  static const authScreen = _Paths.authScreen;
  static const dashboard = _Paths.dashboard;
  static const invoice = _Paths.invoice;
}

abstract class _Paths {
  static const authScreen = "/auth_screen";
  static const dashboard = "/dashboard";
  static const invoice = "/invoice";
}
