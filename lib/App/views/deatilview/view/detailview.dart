import 'package:flutter/material.dart';
import 'package:async_wallpaper/async_wallpaper.dart';
import '../../home_view/model/ApiModel.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Wallpapers data = ModalRoute.of(context)!.settings.arguments as Wallpapers;

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            onPressed: () async {
              await AsyncWallpaper.setWallpaper(
                url: data.webformatURL,
                wallpaperLocation: AsyncWallpaper.HOME_SCREEN,
                goToHome: true,
                toastDetails: ToastDetails.success(),
                errorToastDetails: ToastDetails.error(),
              );
            },
            label: const Text("Set as wallpaper"),
          ),
        ],
      ),
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
