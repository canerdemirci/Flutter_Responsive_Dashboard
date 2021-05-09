import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_cards.dart';

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
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Storage Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: 'assets/icons/Documents.svg',
            title: 'Document Files',
            numOfFiles: 1239,
            amountOfFiles: '1.3GB',
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/media.svg',
            title: 'Media Files',
            numOfFiles: 897,
            amountOfFiles: '0.7GB',
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/folder.svg',
            title: 'Media Files',
            numOfFiles: 897,
            amountOfFiles: '0.7GB',
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/unknown.svg',
            title: 'Media Files',
            numOfFiles: 897,
            amountOfFiles: '0.7GB',
          ),
        ],
      ),
    );
  }
}
