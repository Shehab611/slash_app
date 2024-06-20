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

  @override
  List<Object> get props => [id, name, price, image];
}
