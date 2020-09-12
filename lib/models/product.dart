import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  static const ID = "id";
  static const NAME = "name";
  static const PICTURE = "picture";
  static const PRICE = "price";
  static const DESCRIPTION = "description";
  static const CATEGORY = "category";
  static const QUANTITY = "quantity";
  static const BRAND = "brand";
  static const SIZES = "sizes";
  static const COLORS = "colors";

  String _id;
  String _name;
  String _picture;
  String _description;
  String _category;
  String _brand;
  int _quantity;
  int _price;
  List _colors;
  List _sizes;

  String get id => _id;

  String get name => _name;

  String get picture => _picture;

  String get description => _description;

  String get category => _category;

  String get brand => _brand;

  int get quantity => _quantity;

  int get price => _price;

  List get colors => _colors;

  List get sizes => _sizes;

  ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data()[ID];
    _name = snapshot.data()[NAME];
    _picture = snapshot.data()[PICTURE];
    _description = snapshot.data()[DESCRIPTION] ?? " ";
    _category = snapshot.data()[CATEGORY];
    _brand = snapshot.data()[BRAND];
    _quantity = snapshot.data()[QUANTITY];
    _price = snapshot.data()[PRICE].floor();
    _colors = snapshot.data()[COLORS];
    _sizes = snapshot.data()[SIZES];

  }
}
