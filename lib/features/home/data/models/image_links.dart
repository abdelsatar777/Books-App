class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;
  String? small;
  String? medium;
  String? large;
  String? extraLarge;

  ImageLinks(
      {this.smallThumbnail,
      this.thumbnail,
      this.small,
      this.medium,
      this.large,
      this.extraLarge});

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
      small: json['small'],
      medium: json['medium'],
      large: json['large'],
      extraLarge: json['extraLarge'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['smallThumbnail'] = this.smallThumbnail;
    data['thumbnail'] = this.thumbnail;
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['large'] = this.large;
    data['extraLarge'] = this.extraLarge;
    return data;
  }
}
