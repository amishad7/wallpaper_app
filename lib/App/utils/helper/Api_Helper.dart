import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../views/home_view/model/ApiModel.dart';

class WallpaperApi {
  WallpaperApi._();

  static final WallpaperApi wallpaperApi = WallpaperApi._();

  Future<List<Wallpapers>?> fetchData() async {
    String hostname = "https://pixabay.com";
    String apikey = "41607465-5fe3b927dd77147f637ff0b61";
    String query = "yellow+flowers";
    String api =
        "$hostname/api/?key=$apikey&q=$query&image_type=photo&pretty=true";
    http.Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      var decodeddata = jsonDecode(response.body);

      List mapdata = decodeddata['hits'];

      List<Wallpapers>? wallpapers = mapdata
          .map(
            (e) => Wallpapers.fromAPI(data: e),
          )
          .toList();

      return wallpapers;
    } else {
      return null;
    }
  }
}
