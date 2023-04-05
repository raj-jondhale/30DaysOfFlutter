import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  // const CatalogImage({super.key});
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p1
        .color(context.canvasColor)
        .make()
        .p12()
        .wPCT(context: context, widthPCT: context.isMobile ? 40 : 20);
  }
}
