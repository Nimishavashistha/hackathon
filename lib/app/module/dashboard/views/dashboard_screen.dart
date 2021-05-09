import 'package:flutter/material.dart';
import 'package:hackathon/app/constants/constants.dart';
import 'package:hackathon/app/module/dashboard/views/pages/header.dart';
import 'package:hackathon/app/module/dashboard/views/pages/my_files.dart';
import 'package:hackathon/app/module/dashboard/views/pages/recent_files.dart';
import 'package:hackathon/app/module/dashboard/views/pages/storage_details.dart';
import 'package:hackathon/app/widgets/drawer.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
      ),
      drawer: mainDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        MyFiles(),
                        SizedBox(height: defaultPadding),
                        RecentFiles(),
                        SizedBox(height: defaultPadding),
                        StorageDetails(),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
