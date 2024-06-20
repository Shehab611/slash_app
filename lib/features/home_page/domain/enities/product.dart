import 'package:equatable/equatable.dart';

final class Product extends Equatable {
  final int id;
  final String name;
  final num price;
  final String image;

  const Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.image});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
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

  @override
  List<Object> get props => [id, name, price, image];
}
