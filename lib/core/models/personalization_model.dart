import 'package:admin/core/values/strings_manager.dart';

class PersonalizationModel {
  int? id;
  String? trailingIcon;
  String? title;

  PersonalizationModel({this.id, this.trailingIcon, this.title});
}

List<PersonalizationModel>? personalizationList = [
  PersonalizationModel(id: 0, title: AppStrings.menHealth),
  PersonalizationModel(id: 1, title: AppStrings.mentalHealth),
  PersonalizationModel(id: 2, title: AppStrings.womenHealth),
  PersonalizationModel(id: 3, title: AppStrings.aviationMedicine),
  PersonalizationModel(id: 4, title: AppStrings.weightManagement),
  PersonalizationModel(id: 5, title: AppStrings.integrativeMedicine),
  PersonalizationModel(id: 6, title: AppStrings.alliedHealthServices),
];
