import 'package:flutter/material.dart';
import 'package:hackathon/app/constants/constants.dart';

class mainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              color: secondaryColor,
              child: Center(
                child: Image(
                  image: AssetImage("assets/cashflow_logo.png"),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          buildListTile("Transactions", Icons.transfer_within_a_station, () {}),
          buildListTile("Documents", Icons.description, () {}),
          buildListTile("stocks", Icons.store, () {}),
          buildListTile("Google drive", Icons.drive_folder_upload, () {}),
          buildListTile("Settings", Icons.settings, () {})
        ],
      ),
    );
  }
}
