import 'package:flutter/material.dart';
import 'package:hackathon/app/constants/constants.dart';

class CloudStorageInfo {
  final String title, totalStorage;
  final Icon svgSrc;
  final int numOfFiles, percentage;
  final Color color;

  CloudStorageInfo(
      {this.svgSrc,
      this.title,
      this.totalStorage,
      this.numOfFiles,
      this.percentage,
      this.color});
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 1328,
    svgSrc: Icon(
      Icons.description,
      color: Colors.white,
    ),
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiles: 1328,
    svgSrc: Icon(
      Icons.drive_folder_upload,
      color: Colors.white,
    ),
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Transactions",
    numOfFiles: 1328,
    svgSrc: Icon(
      Icons.transfer_within_a_station,
      color: Colors.white,
    ),
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Stocks",
    numOfFiles: 5328,
    svgSrc: Icon(
      Icons.store,
      color: Colors.white,
    ),
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
