import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_learning/constants/my_app_icons.dart';

class CachedImageWidget extends StatelessWidget {
  const CachedImageWidget({
    super.key,
    required this.imageUrl,
    this.imageHeight,
    this.imageWidth,
    this.fit,
  });

  final String imageUrl;
  final double? imageHeight;
  final double? imageWidth;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CachedNetworkImage(
      height: imageHeight ?? size.height * 0.3,
      width: imageWidth ?? size.width * 0.2,
      fit: fit ?? BoxFit.cover,
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => const Icon(
        MyAppIcons.error,
        color: Colors.red,
      ),
    );
  }
}
