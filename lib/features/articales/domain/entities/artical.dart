import 'package:equatable/equatable.dart';

class ArticalEntity extends Equatable {
  final int? id;
  final String? auther;
  final String? description;
  final String? title;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticalEntity(
      {required this.id,
      required this.auther,
      required this.description,
      required this.title,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  @override
  List<Object?> get props =>
      [id, auther, description, title, url, urlToImage, publishedAt, content];
}
