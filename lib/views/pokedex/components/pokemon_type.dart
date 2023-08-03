import 'package:flutter/material.dart';

class PokemonType extends StatelessWidget {
  const PokemonType(
    this.type, {
    Key? key,
    this.large = false,
    this.colored = false,
    this.extra = '',
  }) : super(key: key);

  final String type;
  final String extra;
  final bool large;
  final bool colored;

  @override
  Widget build(BuildContext context) {
    var bgColor = Theme.of(context).colorScheme.background;
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: large ? 19 : 12,
          vertical: large ? 6 : 4,
        ),
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: (bgColor).withOpacity(0.2),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              type,
              textScaleFactor: 1,
              style: TextStyle(
                  fontSize: large ? 12 : 8,
                  height: 0.8,
                  fontWeight: large ? FontWeight.bold : FontWeight.normal,
                  color: bgColor),
              textAlign: TextAlign.center,
            ),
            // HSpacer(5),
            Text(
              extra,
              textScaleFactor: 1,
              style: TextStyle(
                fontSize: large ? 12 : 8,
                height: 0.8,
                fontWeight: large ? FontWeight.bold : FontWeight.normal,
                color: bgColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
