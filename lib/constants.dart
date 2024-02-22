import 'package:flutter/material.dart';
import 'package:responsivedashboard/components/Nav.dart';
import 'package:responsivedashboard/layouts/sidebar.dart';

var defaultBackgroundColor = const Color(0xFFF6F6F6);
var appBarColor = Colors.grey[900];
var myAppBar = PreferredSize(
  preferredSize: const Size.fromHeight(136),
  child: AppBar(
    // title: const Text(''),
    backgroundColor: const Color(0xFFF6F6F6),
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(94.0),
      child: NavWidget(),
    ),
  ),
);

var drawerTextColor = TextStyle(
  color: Color(0xFFFFFFFFF),
);
var myDrawer = const Drawer(
  backgroundColor: Colors.transparent,
  width: 287,
  elevation: 0,
  child: Sidebar(),
);

const sidebar = [
  {
    'id': 1,
    'name': "Darsliklar",
    'url': "/lessons",
    "svg": 'assets/sidebar/lessons.svg',
    // svgActive: dashboardActive,
    'role': [],
  },
  {
    'id': 1,
    'name': "Reyting",
    'url': "/reyting",
    'svg': 'assets/sidebar/reyting.svg',
    // svgActive: dashboardActive,
    'role': [],
  },
  {
    'id': 1,
    'name': "Sinflar",
    'url': "/classes",
    'svg': 'assets/sidebar/classes.svg',
    // svgActive: dashboardActive,
    'role': [],
  },
  {
    'id': 1,
    'name': "Chat",
    'url': "/chat",
    'svg': 'assets/sidebar/chat.svg',
    // svgActive: dashboardActive,
    'role': [],
  },
  {
    'id': 1,
    'name': "Yangiliklar",
    'url': "/news",
    'svg': 'assets/sidebar/news.svg',
    // svgActive: dashboardActive,
    'role': [],
  },
  {
    'id': 1,
    'name': "Sozlamalar",
    'url': "/settings",
    'svg': 'assets/sidebar/settings.svg',
    // svgActive: dashboardActive,
    'role': [],
  },
];
