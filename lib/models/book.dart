

import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable(explicitToJson: true)
class Book {

  Book({
    required this.title,
    required this.subTitle,
    required this.isbn13,
    required this.price,
    required this.image,
    required this.url,
  });
  
  final String title;
  final String subTitle;
  final String isbn13;
  final String price;
  final String image;
  final String url;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  Map<String, dynamic> toJson() => _$BookToJson(this);

}
