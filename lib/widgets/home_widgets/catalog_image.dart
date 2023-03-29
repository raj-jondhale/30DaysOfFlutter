import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../themes.dart';
class CatalogImage extends StatelessWidget {
  // const CatalogImage({super.key});
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p12
        .color(MyThemes.creamColor)
        .make()
        .p12()
        .w40(
          context,
        );
  }
}
