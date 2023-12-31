extension image_path on String {
  String get toSvg => "assets/icons/$this.svg";
  String get toPng => "assets/images/$this.png";
  String get toJpg => "assets/images/$this.jpg";
  String get toGif => "assets/images/$this.gif";
}
