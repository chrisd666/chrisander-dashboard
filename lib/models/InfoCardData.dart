import 'package:flutter/material.dart';
import '../constants.dart';

class CloudStorageInfo {
  final IconData icon;
  final String title;
  final double amount, percentageChange;
  final bool isMoney;

  CloudStorageInfo(
      {this.icon,
      this.title,
      this.amount,
      this.percentageChange,
      this.isMoney = true});
}

List<CloudStorageInfo> demoMyFields = [
  CloudStorageInfo(
      title: "Total Sales",
      amount: 450,
      icon: Icons.trending_up,
      percentageChange: 45),
  CloudStorageInfo(
    title: "Total Revenue",
    amount: 920,
    icon: Icons.attach_money,
    percentageChange: 60,
  ),
];
