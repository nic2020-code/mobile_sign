import 'package:flutter/material.dart';

Widget settingItems(BuildContext context, page, IconData leadingIcon, String settingTitle) {
  return Container(
    margin: EdgeInsets.only(top: 1.0),
    decoration: BoxDecoration (
        color: Colors.white
    ),
    child: ListTile(
      leading: Icon(
        leadingIcon,
        color: Color.fromRGBO(107, 119, 140, 1),
      ),
      title: Text(
        settingTitle,
        style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(52, 69, 99, 1)
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_sharp,
        size: 20.0,
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
    ),
  );
}

Widget settingItems1(BuildContext context, page, IconData leadingIcon, String settingTitle) {
  return Container(
    margin: EdgeInsets.only(top: 1.0),
    decoration: BoxDecoration (
        color: Colors.white
    ),
    child: ListTile(
      leading: Icon(
        leadingIcon,
        color: Color.fromRGBO(107, 119, 140, 1),
      ),
      title: Text(
        settingTitle,
        style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(52, 69, 99, 1)
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
    ),
  );
}