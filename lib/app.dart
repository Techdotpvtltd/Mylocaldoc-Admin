import 'package:admin/core/controllers/MenuAppController.dart';
import 'package:admin/features/signin/signin_screen.dart';
import 'package:admin/features/main/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          //NavigationCubit
          BlocProvider<NavigationCubit>(
            create: (context) => NavigationCubit(),
          ),
        ],
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'MyLocalDoc Admin Portal',
            builder: EasyLoading.init(),
            theme: ThemeData(
              visualDensity: VisualDensity.standard,
            ),
            home: const SignInScreen() //const MainScreen(),
            ),
      ),
    );
  }
}
