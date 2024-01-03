class Wallpapers {
  String pageURL;
  String webformatURL;
  String largeImageURL;

  Wallpapers(
      {required this.pageURL,
      required this.webformatURL,
      required this.largeImageURL});

  factory Wallpapers.fromAPI({required Map data}) {
    return Wallpapers(
        pageURL: data['pageURL'],
        webformatURL: data['webformatURL'],
        largeImageURL: data['largeImageURL']);
  }
}
