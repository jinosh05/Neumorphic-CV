import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  const AppImage(this.imgURL, {super.key, this.width, this.height, this.fit});
  final String imgURL;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (imgURL.contains('.svg')) {
      return SvgPicture.asset(
        imgURL,
        height: height,
        fit: fit ?? BoxFit.cover,
        width: width,
      );
    } else {
      return Image.asset(
        imgURL,
        height: height,
        fit: fit ?? BoxFit.cover,
        width: width,
      );
    }
  }
}
