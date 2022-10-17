import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  final List<String> list;
  final ValueChanged<String> onTapped;

  HomeScreen({required this.list, required this.onTapped});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    print('initstate of homescreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            MdiIcons.home,
            color: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            for (var item in widget.list)
              ListTile(
                title: Text(item),
                onTap: () => widget.onTapped(item),
              )
          ],
        ),
      ),
    );
  }
}
