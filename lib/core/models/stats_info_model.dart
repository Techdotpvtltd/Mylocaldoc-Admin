import 'package:admin/core/theme/app_colors.dart';
import 'package:admin/exports/app_exports.dart';
import 'package:admin/features/our_locals/our_locals_view.dart';
import 'package:admin/features/contact_us_entries/contact_us_entries_view.dart';
import 'package:admin/features/free_coffees/free_coffees_view.dart';
import 'package:admin/features/personalization/personalization_view.dart';
import 'package:admin/features/promotions/promotions_view.dart';
import 'package:admin/features/users/users_view.dart';
import 'package:flutter/material.dart';

class StatsInfoModel {
  final String svgSrc, title, subtitle;
  final Color iconColor;
  final Widget panelView;

  StatsInfoModel({
    required this.svgSrc,
    required this.title,
    required this.subtitle,
    required this.iconColor,
    required this.panelView,
  });
}

final List<Widget> dashboardViewsList = [
  //const DashboardScreen(),
  const UsersView(),
  PersonalizationsView(),
  const PromotionsView(),
  const FreeCoffeesView(),
  const OurLocalsView(),
  const ContactUsEntriesView(),
];

List dashboardPanelsList = [
  StatsInfoModel(
    title: "Users",
    subtitle: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: AppColors.blue200,
    panelView: const UsersView(),
  ),
  StatsInfoModel(
    title: "Personalizations",
    subtitle: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: AppColors.blue200,
    panelView: PersonalizationsView(),
  ),
  StatsInfoModel(
    title: "Doctors",
    subtitle: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: AppColors.blue200,
    panelView: const PromotionsView(),
  ),
  StatsInfoModel(
    title: "Promotions",
    subtitle: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: AppColors.blue200,
    panelView: const PromotionsView(),
  ),
  // ==========
  StatsInfoModel(
    title: "Free Coffee Codes",
    subtitle: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: AppColors.blue200,
    panelView: const FreeCoffeesView(),
  ),
  StatsInfoModel(
    title: "Local SpotLight",
    subtitle: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: AppColors.blue200,
    panelView: const UsersView(),
  ),
  StatsInfoModel(
    title: "CHM",
    subtitle: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: AppColors.blue200,
    panelView: const OurLocalsView(),
  ),
  StatsInfoModel(
    title: "Discount Codes",
    subtitle: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: AppColors.blue200,
    panelView: const ContactUsEntriesView(),
  ),
  StatsInfoModel(
    title: "Contact Submissions",
    subtitle: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: AppColors.blue200,
    panelView: const ContactUsEntriesView(),
  ),
];

// =============================================
// =============================================

class MembersBookingInfoModel {
  final String? svgSrc, title, value;
  final String? percentage;
  final Color? iconColor;

  MembersBookingInfoModel({
    this.svgSrc,
    this.title,
    this.percentage,
    this.iconColor,
    this.value,
  });
}

List membersBookingInfoList = [
  MembersBookingInfoModel(
    title: "Members Online",
    value: "248",
    svgSrc: LocalImages.imgFluentpeoplec,
    iconColor: const Color(0xFF6C5DD3),
    percentage: "+ 9.2% from last month",
  ),
  MembersBookingInfoModel(
    title: "Total Bookings",
    value: "11,340",
    svgSrc: LocalImages.iconCart,
    iconColor: AppColors.blue200,
    percentage: "+ 8% from last month",
  ),
];
