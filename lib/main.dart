import 'package:flutter/material.dart';
import 'package:wallpaper_app/App/views/homeview/view/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Home(),
      },
    ),
  );
}
