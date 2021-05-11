import 'package:flutter/material.dart';

class RecentFile {
  final String title, date, size;
  final IconData icon;

  RecentFile({
    this.icon,
    this.title,
    this.date,
    this.size,
  });
}

List<RecentFile> demoRecentFiles = [
  RecentFile(
    icon: Icons.collections,
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: Icons.perm_media_rounded,
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: Icons.description,
    title: "Documetns",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: Icons.music_note,
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: Icons.play_circle_fill,
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: Icons.picture_as_pdf,
    title: "Sals PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: Icons.grid_on,
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
