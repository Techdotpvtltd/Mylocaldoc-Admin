import 'package:cloud_firestore/cloud_firestore.dart';

class PromotionsViewDataModel {
// promotionListTitle
// "Discover our range of allied health specialists:"

  String? id;
  String? headerBgImage;
  String? titleText;
  String? subtitleText;
  String? descriptionText;
  String? promotionListTitle;

  PromotionsViewDataModel(
      {this.id,
      this.headerBgImage,
      this.titleText,
      this.subtitleText,
      this.descriptionText,
      this.promotionListTitle});

  PromotionsViewDataModel.fromDocumentSnapshot(
      QueryDocumentSnapshot<Object?> doc) {
    id = doc.id;
    headerBgImage = doc['headerBgImage'];
    titleText = doc['titleText'];
    subtitleText = doc['subtitleText'];
    descriptionText = doc['descriptionText'];
    promotionListTitle = doc['promotionListTitle'];
  }
}
