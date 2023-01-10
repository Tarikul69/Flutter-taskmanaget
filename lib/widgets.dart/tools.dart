import 'package:flutter/material.dart';

AppBar topbar() {
  return AppBar(
    title: const ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
      ),
      title: Text(
        "Tarikul Abir",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "tarikulabir931@gmail.com",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    backgroundColor: Colors.green[400],
  );
}