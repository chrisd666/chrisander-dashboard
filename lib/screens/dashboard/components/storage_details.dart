import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../components/chart.dart';
import '../components/storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            icon: Icons.description_rounded,
            title: "Document Files",
            totalSizeOfFiles: "1.3GB",
            noOfFiles: 1328,
          ),
          StorageInfoCard(
            icon: Icons.perm_media_rounded,
            title: "Media",
            totalSizeOfFiles: "15.3GB",
            noOfFiles: 1328,
          ),
          StorageInfoCard(
            icon: Icons.folder,
            title: "Other Files",
            totalSizeOfFiles: "1.3GB",
            noOfFiles: 1328,
          ),
          StorageInfoCard(
            icon: Icons.help_center_rounded,
            title: "Unknown",
            totalSizeOfFiles: "13GB",
            noOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
