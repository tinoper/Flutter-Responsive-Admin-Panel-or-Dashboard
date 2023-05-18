import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class KpiInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  KpiInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  KpiInfo(
    title: "Documents",
    numOfFiles: 1328,
    svgSrc: "assets/icons/documents.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  KpiInfo(
    title: "Google Drive",
    numOfFiles: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  KpiInfo(
    title: "One Drive",
    numOfFiles: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  KpiInfo(
    title: "Documents",
    numOfFiles: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
