import 'package:flutter/material.dart';
import 'package:responsivedashboard/screens/lessons.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 100),
          // padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // open drawer
              myDrawer,

              // first half of page
              const LessonsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
