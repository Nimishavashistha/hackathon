import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "FlutterChat",
        theme: ThemeData(
            primaryColor: Colors.red,
            buttonTheme: ButtonTheme.of(context).copyWith(
              textTheme: ButtonTextTheme.primary,
            )),
        getPages: AppPages.pages,
        initialRoute: AppRoutes.invoice);
  }
}
