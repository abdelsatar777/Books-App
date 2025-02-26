class Epub {
  bool? isAvailable;
  String? downloadLink;

  Epub({this.isAvailable, this.downloadLink});

  factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'],
      downloadLink: json['downloadLink'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isAvailable'] = this.isAvailable;
    data['downloadLink'] = this.downloadLink;
    return data;
  }
}
