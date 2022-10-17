import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String item;

  DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Details",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            MdiIcons.accessPoint,
            color: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: Text(item),
      ),
    );
    ;
  }
}
