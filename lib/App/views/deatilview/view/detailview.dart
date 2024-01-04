import 'package:flutter/material.dart';
import 'package:wallpaper_app/App/views/homeview/model/ApiModel.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Wallpapers data = ModalRoute.of(context)!.settings.arguments as Wallpapers;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(data.webformatURL),
          ),
        ),
      ),
    );
  }
}
