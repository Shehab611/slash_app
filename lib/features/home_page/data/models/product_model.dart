import 'package:slash_app/features/home_page/domain/entities/product.dart';

final class ProductModel extends Product {
  const ProductModel(
      {required super.id,
      required super.name,
      required super.price,
      required super.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        image: json['image']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'image': image,
    };
  }
}
