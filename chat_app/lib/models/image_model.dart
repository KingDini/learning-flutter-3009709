class PixelFordImage {
  String id = "";
  String filename = "";
  String? title;
  String urlFullSize = "";
  String urlSmallSize = "";

  PixelFordImage(
      {required this.id,
      required this.filename,
      required this.urlFullSize,
      required this.urlSmallSize});

  PixelFordImage.fromJson(Map<String, dynamic> imageMap) {
    this.id = imageMap["id"];
    this.filename = imageMap["filename"];
    this.title = imageMap["title"];
    this.urlFullSize = imageMap["url_full_size"];
    this.urlSmallSize = imageMap["url_small_size"];
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        "id": id,
        "filename": filename,
        "title": title,
        "url_full_size": urlFullSize,
        "url_small_size": urlSmallSize
      };
}
