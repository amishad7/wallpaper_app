import 'package:flutter/material.dart';
import 'package:wallpaper_app/App/utils/helper/Api_Helper.dart';
import 'package:wallpaper_app/App/views/homeview/model/ApiModel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: WallpaperApi.wallpaperApi.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            List<Wallpapers>? wallpapers = snapshot.data;

            return GridView.builder(
              itemCount: wallpapers!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisExtent: 250,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, i) {
                return Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(23),

                    image: DecorationImage(
                      image: NetworkImage(
                        wallpapers![i].largeImageURL,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
