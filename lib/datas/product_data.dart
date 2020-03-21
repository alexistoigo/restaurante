import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {
  String category;

  String id;
  String title;
  String description;

  double price;

  List images;
  List noitem;

  ProductData.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    price = snapshot.data["price"];
    images = snapshot.data["images"];
    noitem = snapshot.data["noitem"];
  }
}