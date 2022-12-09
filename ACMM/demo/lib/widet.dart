import 'package:flutter/material.dart';
import 'package:demo/editprof.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(Icons.edit),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EditProfilePage()),
        );
      },
    ),
    elevation: 0,
  );
}
