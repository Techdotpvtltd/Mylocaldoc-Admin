import 'package:admin/core/controllers/MenuAppController.dart';
import 'package:admin/features/main/main_screen.dart';
import 'package:admin/features/signin/signin_screen.dart';
import 'package:admin/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.userExit});

  final bool userExit;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),
        ),
      ],
      child: GetMaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'MyLocalDoc Admin Portal',
        builder: EasyLoading.init(),
        theme: ThemeData(
          visualDensity: VisualDensity.standard,
        ),
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
