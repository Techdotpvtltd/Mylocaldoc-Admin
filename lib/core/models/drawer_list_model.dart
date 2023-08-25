import 'package:admin/core/values/strings_manager.dart';

class DrawerListModel {
  final int id;
  String title;
  final String iconpath;
  DrawerListModel({this.id = 0, this.title = "", this.iconpath = ""});
}

List<DrawerListModel> drawerMenueList = [
  DrawerListModel(id: 0, title: AppStrings.profile),
  DrawerListModel(id: 1, title: AppStrings.notifications),
  DrawerListModel(id: 2, title: AppStrings.parkingTransactions),
  DrawerListModel(id: 3, title: AppStrings.preferredHealthHubClinic),
  DrawerListModel(id: 4, title: AppStrings.appearance),
  DrawerListModel(id: 5, title: AppStrings.events),
  DrawerListModel(id: 6, title: AppStrings.languageAndSettings),
  DrawerListModel(id: 7, title: AppStrings.feedback),
  DrawerListModel(id: 8, title: AppStrings.privacyPolicy),
  DrawerListModel(id: 9, title: AppStrings.signOut),
];
