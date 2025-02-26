import 'package:books_app/features/home/data/models/panelization_summary.dart';
import 'package:books_app/features/home/data/models/reading_modes.dart';

import 'image_links.dart';

class VolumeInfo {
  String? title;
  String? publisher;
  String? publishedDate;
  ReadingModes? readingModes;
  int? pageCount;
  int? printedPageCount;
  String? printType;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo(
      {this.title,
      this.publisher,
      this.publishedDate,
      this.readingModes,
      this.pageCount,
      this.printedPageCount,
      this.printType,
      this.maturityRating,
      this.allowAnonLogging,
      this.contentVersion,
      this.panelizationSummary,
      this.imageLinks,
      this.language,
      this.previewLink,
      this.infoLink,
      this.canonicalVolumeLink});

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      readingModes: json['readingModes'] != null
          ? new ReadingModes.fromJson(json['readingModes'])
          : null,
      pageCount: json['pageCount'],
      printedPageCount: json['printedPageCount'],
      printType: json['printType'],
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      contentVersion: json['contentVersion'],
      panelizationSummary: json['panelizationSummary'] != null
          ? new PanelizationSummary.fromJson(json['panelizationSummary'])
          : null,
      imageLinks: json['imageLinks'] != null
          ? new ImageLinks.fromJson(json['imageLinks'])
          : null,
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['publisher'] = this.publisher;
    data['publishedDate'] = this.publishedDate;
    if (this.readingModes != null) {
      data['readingModes'] = this.readingModes!.toJson();
    }
    data['pageCount'] = this.pageCount;
    data['printedPageCount'] = this.printedPageCount;
    data['printType'] = this.printType;
    data['maturityRating'] = this.maturityRating;
    data['allowAnonLogging'] = this.allowAnonLogging;
    data['contentVersion'] = this.contentVersion;
    if (this.panelizationSummary != null) {
      data['panelizationSummary'] = this.panelizationSummary!.toJson();
    }
    if (this.imageLinks != null) {
      data['imageLinks'] = this.imageLinks!.toJson();
    }
    data['language'] = this.language;
    data['previewLink'] = this.previewLink;
    data['infoLink'] = this.infoLink;
    data['canonicalVolumeLink'] = this.canonicalVolumeLink;
    return data;
  }
}
