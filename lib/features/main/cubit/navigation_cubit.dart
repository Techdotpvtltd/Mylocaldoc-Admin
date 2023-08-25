import 'package:admin/features/dashboard/dashboard_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(
          const NavigationState(
            title: "Dashboard",
            viewIndex: 0,
            activeWidget: DashboardScreen(),
          ),
        );

  /// Update Panel View
  void onUpdatePanelView({
    required String title,
    required int index,
    required Widget view,
  }) =>
      emit(NavigationState(
        title: title,
        viewIndex: index,
        activeWidget: view,
      ));
}
