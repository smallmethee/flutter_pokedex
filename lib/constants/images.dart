import 'package:flutter/material.dart';
import 'package:flutter_pokedex/utils/extensions.dart';

class _Image extends AssetImage {
  const _Image(String file) : super(file);
}

class Images {
  static const bulbasaur = _Image("assets/images/pokeball.png");
  static final pikloader = _Image('pika_loader'.toGif);
  static final pokeball = _Image('pokeball'.toPng);

  static Future precacheAssets(BuildContext context) async {
    await precacheImage(bulbasaur, context);
    await precacheImage(pokeball, context);
    await precacheImage(pikloader, context);
  }
}
