import 'package:flutter/material.dart';
import '../constants.dart';

class CloudStorageInfo {
  final IconData icon;
  final String title, totalStorage;
  final int noOfFiles, percentage;
  final Color color;

  CloudStorageInfo(
      {required this.icon,
      required this.title,
      required this.totalStorage,
      required this.color,
      required this.noOfFiles,
      required this.percentage});
}

List<CloudStorageInfo> demoMyFields = [
  CloudStorageInfo(
      title: "Documents",
      noOfFiles: 1328,
      icon: Icons.description_rounded,
      totalStorage: "1.9GB",
      color: primaryColor,
      percentage: 35),
  CloudStorageInfo(
    title: "Google Drive",
    noOfFiles: 1328,
    icon: Icons.save_outlined,
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    noOfFiles: 1328,
    icon: Icons.folder,
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    noOfFiles: 5328,
    icon: Icons.description_rounded,
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
