import 'package:admin/aimations/fade_transitioned_widget.dart';
import 'package:admin/core/controllers/MenuAppController.dart';
import 'package:admin/core/helpers/responsive.dart';
import 'package:admin/core/theme/theme_helper.dart';
import 'package:admin/features/main/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),
        ),
      ],
      child: Scaffold(
        backgroundColor: appColors.black900,
        key: context.read<MenuAppController>().scaffoldKey,
        drawer: const SideMenu(),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // We want this side menu only for large screen
              if (Responsive.isDesktop(context))
                const Expanded(
                  // default flex = 1
                  // and it takes 1/6 part of the screen
                  child: SideMenu(),
                ),
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: BlocBuilder<NavigationCubit, NavigationState>(
                  builder: (context, state) {
                    return FadeTransitionedWidget(
                      child: state.activeWidget,
                    );
                  },
                ),

                //DashboardScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
