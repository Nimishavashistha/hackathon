import 'package:flutter/material.dart';
import 'package:hackathon/app/constants/constants.dart';
import 'package:hackathon/app/data/model/recent_files.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key key,
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
          Text(
            "Recent Transactions",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text(
                    "File Name",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Size",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Text(
              fileInfo.title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          fileInfo.date,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      DataCell(Text(
        fileInfo.size,
        style: TextStyle(
          color: Colors.white,
        ),
      )),
    ],
  );
}
