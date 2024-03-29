import 'package:flutter/material.dart';
import 'package:wallpaper_app/App/views/deatilview/view/detailview.dart';

import 'App/views/home_view/view/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Home(),
        'sub': (context) => const DetailPage(),
      },
    ),
  );
}
