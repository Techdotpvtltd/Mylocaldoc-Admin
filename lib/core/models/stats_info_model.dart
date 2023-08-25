import 'package:admin/exports/app_exports.dart';
import 'package:flutter/material.dart';

class StatsInfoModel {
  final String? svgSrc, title, value, statsSpan;
  final int? percentage;
  final Color? iconColor;
  final bool? isIncremented;

  StatsInfoModel({
    this.svgSrc,
    this.title,
    this.percentage,
    this.iconColor,
    this.value,
    this.statsSpan,
    this.isIncremented,
  });
}

List statsInfoModelList = [
  StatsInfoModel(
    title: "Users",
    value: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: appColors.blueA200,
    percentage: 23,
    statsSpan: "This Week",
    isIncremented: true,
  ),
  StatsInfoModel(
    title: "Personalizations",
    value: "2,153",
    svgSrc: LocalImages.iconBasketFilled,
    iconColor: const Color(0xFF6C5DD3),
    percentage: 10,
    statsSpan: "This Week",
    isIncremented: false,
  ),
  StatsInfoModel(
    title: "Doctors",
    value: "144",
    svgSrc: LocalImages.iconCash,
    iconColor: const Color(0xFFFFCE73),
    percentage: 28,
    statsSpan: "This Week",
    isIncremented: true,
  ),
  StatsInfoModel(
    title: "Promotions",
    value: "32",
    svgSrc: LocalImages.iconCash,
    iconColor: appColors.pink200,
    percentage: 14,
    statsSpan: "This Week",
    isIncremented: true,
  ),
  // ==========
  StatsInfoModel(
    title: "Free Coffee Codes",
    value: "4,423",
    svgSrc: LocalImages.imgUserBlueA200,
    iconColor: appColors.blueA200,
    percentage: 23,
    statsSpan: "This Week",
    isIncremented: true,
  ),
  StatsInfoModel(
    title: "Local SpotLight",
    value: "2,153",
    svgSrc: LocalImages.iconBasketFilled,
    iconColor: const Color(0xFF6C5DD3),
    percentage: 10,
    statsSpan: "This Week",
    isIncremented: false,
  ),
  StatsInfoModel(
    title: "CHM",
    value: "142",
    svgSrc: LocalImages.iconCash,
    iconColor: const Color(0xFFFFCE73),
    percentage: 28,
    statsSpan: "This Week",
    isIncremented: true,
  ),
  StatsInfoModel(
    title: "Discount Codes",
    value: "322",
    svgSrc: LocalImages.iconCash,
    iconColor: appColors.pink200,
    percentage: 14,
    statsSpan: "This Week",
    isIncremented: true,
  ),
  StatsInfoModel(
    title: "Contact Submissions",
    value: "322",
    svgSrc: LocalImages.iconCash,
    iconColor: appColors.pink200,
    percentage: 14,
    statsSpan: "This Week",
    isIncremented: true,
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
    iconColor: appColors.blueA200,
    percentage: "+ 8% from last month",
  ),
];
