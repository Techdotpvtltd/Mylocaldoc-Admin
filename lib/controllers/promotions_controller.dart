import 'package:admin/models/promotions_view_data_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class PromotionsController extends GetxController {
  final personalizationsCollection =
      FirebaseFirestore.instance.collection('promotions');

  PromotionsViewDataModel  promotionsViewDataModel = PromotionsViewDataModel();

  @override
  onInit() {
    super.onInit();
    
   // getAllPromotions();
  }
}
