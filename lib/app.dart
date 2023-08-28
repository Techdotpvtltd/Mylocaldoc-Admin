import 'package:admin/controllers/theme_controller.dart';
import 'package:admin/core/theme/themes.dart';
import 'package:admin/features/main/main_screen.dart';
import 'package:admin/features/signin/signin_screen.dart';
import 'package:admin/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'MyLocalDoc Admin Portal',
        builder: EasyLoading.init(),
        themeMode: _themeController.themeMode.value,
        theme: AppTheme.getLightTheme(),
        darkTheme: AppTheme.getDarkTheme(),
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => SplashScreen()),
          GetPage(name: '/login', page: () => const SignInScreen()),
          GetPage(name: '/main', page: () => MainScreen()),
        ],
      ),
    );
  }
}
