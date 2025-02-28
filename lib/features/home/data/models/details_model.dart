class DetailsModel {
  final String title;
  final String subtitle;
  final String latestRevision;
  final String covers;
  final String created;

  DetailsModel({
    required this.title,
    required this.subtitle,
    required this.latestRevision,
    required this.covers,
    required this.created,
  });

  factory DetailsModel.fromJson(Map<String, dynamic> json) {
    return DetailsModel(
      title: json["title"] ?? "No Title",
      subtitle: json["subtitle"] ?? "No Sub Title",
      latestRevision: json["latest_revision"].toString(),
      covers: json["covers"][0].toString(),
      created: json["created"]["value"] ?? "No Date",
    );
  }
}
