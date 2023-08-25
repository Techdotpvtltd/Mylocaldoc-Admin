import 'package:admin/core/theme/theme_helper.dart';
import 'package:admin/core/values/local_images.dart';
import 'package:admin/features/booking/booking_screen.dart';
import 'package:admin/features/calendar/calendar_screen.dart';
import 'package:admin/features/dashboard/dashboard_screen.dart';
import 'package:admin/features/events/events_screen.dart';
import 'package:admin/features/main/components/drawer_list_tile.dart';
import 'package:admin/features/main/cubit/navigation_cubit.dart';
import 'package:admin/features/payments_structure/payments_structure_screen.dart';
import 'package:admin/features/settings/settings_screen.dart';
import 'package:admin/features/users/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Drawer(
          backgroundColor: const Color(0xFF2A2D3E),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
              right: BorderSide(
                color: theme.colorScheme.primary,
                width: 3.0,
              ),
            )),
            child: Column(
              children: [
                DrawerHeader(
                  child: Image.asset("assets/images/appLogo.png"),
                ),
                DrawerListTile(
                  title: "Dashboard",
                  svgSrc: LocalImages.imgIconDashboard,
                  isSelected: state.viewIndex == 0 ? true : false,
                  press: () {
                    context.read<NavigationCubit>().onUpdatePanelView(
                          title: "Dashboard",
                          index: 0,
                          view: const DashboardScreen(),
                        );
                  },
                ),
                DrawerListTile(
                  title: "Users",
                  svgSrc: LocalImages.imgUsers,
                  isSelected: state.viewIndex == 3 ? true : false,
                  press: () {
                    context.read<NavigationCubit>().onUpdatePanelView(
                          title: "Users",
                          index: 3,
                          view: const UsersScreen(),
                        );
                  },
                ),
                DrawerListTile(
                  title: "Personalization",
                  svgSrc: LocalImages.iconEvents,
                  isSelected: state.viewIndex == 1 ? true : false,
                  press: () {
                    context.read<NavigationCubit>().onUpdatePanelView(
                          title: "Personalization",
                          index: 1,
                          view: const EventsScreen(),
                        );
                  },
                ),
                DrawerListTile(
                  title: "Promotions",
                  svgSrc: LocalImages.iconBooking,
                  isSelected: state.viewIndex == 2 ? true : false,
                  press: () {
                    context.read<NavigationCubit>().onUpdatePanelView(
                          title: "Promotions",
                          index: 2,
                          view: const BookingScreen(),
                        );
                  },
                ),
                DrawerListTile(
                  title: "Free Coffee",
                  svgSrc: LocalImages.imgCalendarWhite,
                  isSelected: state.viewIndex == 4 ? true : false,
                  press: () {
                    context.read<NavigationCubit>().onUpdatePanelView(
                          title: "Free Coffee",
                          index: 4,
                          view: const CalendarScreen(),
                        );
                  },
                ),
                DrawerListTile(
                  title: "CHM",
                  svgSrc: LocalImages.imgLockWhiteA700,
                  isSelected: state.viewIndex == 5 ? true : false,
                  press: () {
                    context.read<NavigationCubit>().onUpdatePanelView(
                          title: "CHM",
                          index: 5,
                          view: const SettingsScreen(),
                        );
                  },
                ),
                DrawerListTile(
                  title: "Contact Us",
                  svgSrc: LocalImages.iconPayments,
                  isSelected: state.viewIndex == 6 ? true : false,
                  press: () {
                    context.read<NavigationCubit>().onUpdatePanelView(
                          title: "Contact Us Form Submissions",
                          index: 6,
                          view: const PaymentsStructureScreen(),
                        );
                  },
                ),
                const Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(
                        LocalImages.profileImage,
                        height: 40,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jane Eyre",
                          style: theme.textTheme.titleSmall!
                              .copyWith(fontFamily: 'Lato'),
                        ),
                        Text(
                          "Admin",
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: appColors.pink300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }
}
