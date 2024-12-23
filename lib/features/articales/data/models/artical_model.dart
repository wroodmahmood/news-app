import '../../domain/entities/artical.dart';

class ArticalesResponse {
  final String status;
  final List<ArticalModel> articales;
  final int totalResults;

  ArticalesResponse(
      {required this.status,
      required this.articales,
      required this.totalResults});
  factory ArticalesResponse.fromJson(Map<String, dynamic> json) =>
      ArticalesResponse(
          status: json['status'],
          articales: List<ArticalModel>.from(
              json["articles"].map((x) => ArticalModel.fromJson(x))),
          totalResults: json['totalResults']);
}

class ArticalModel extends ArticalEntity {
  const ArticalModel(
      {required super.id,
      required super.auther,
      required super.description,
      required super.title,
      required super.url,
      required super.urlToImage,
      required super.publishedAt,
      required super.content});
  factory ArticalModel.fromJson(Map<String, dynamic> json) => ArticalModel(
      id: json["id"],
      auther: json["auther"] ?? "",
      description: json["description"] ?? "",
      title: json["title"] ?? "",
      url: json["url"] ?? "",
      urlToImage: json["urlToImageid"] ?? "",
      publishedAt: json["publishedAt"] ?? "",
      content: json["content"] ?? "");
}
