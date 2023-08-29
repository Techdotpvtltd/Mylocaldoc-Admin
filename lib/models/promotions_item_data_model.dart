import 'package:cloud_firestore/cloud_firestore.dart';

class PromotionItemDataModel {
// promotionListTitle
// "Discover our range of allied health specialists:"

  String? id;
  String? image;
  String? title;
  String? subtitleText;
  String? descriptionText;
  String? promotionListTitle;

  PromotionItemDataModel(
      {this.id,
      this.image,
      this.title,
      this.subtitleText,
      this.descriptionText,
      this.promotionListTitle});

  PromotionItemDataModel.fromDocumentSnapshot(
      QueryDocumentSnapshot<Object?> doc) {
    id = doc.id;
    image = doc['image'];
    title = doc['title'];
    subtitleText = doc['subtitleText'];
    descriptionText = doc['descriptionText'];
    promotionListTitle = doc['promotionListTitle'];
  }
}
