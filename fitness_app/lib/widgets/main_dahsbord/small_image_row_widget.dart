import 'package:fitness_app/widgets/main_dahsbord/small_image_widget.dart';
import 'package:flutter/material.dart';


class SmallImageRowWidget extends StatelessWidget {
  final double top;
  final double left;
  final double width;
  final double imageWidth;
  final double imageHeight;
  final double spacing;

  const SmallImageRowWidget({
    super.key,
    required this.top,
    required this.left,
    required this.width,
    required this.imageWidth,
    required this.imageHeight,
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SmallImageWidget(
              imagePath: 'assets/images/img_main_screen_03.png',
              width: imageWidth,
              height: imageHeight,
            ),
            SizedBox(width: spacing),
            SmallImageWidget(
              imagePath: 'assets/images/img_main_screen_04.png',
              width: imageWidth,
              height: imageHeight,
            ),
            SizedBox(width: spacing),
            SmallImageWidget(
              imagePath: 'assets/images/img_main_screen_05.png',
              width: imageWidth,
              height: imageHeight,
            ),
          ],
        ),
      ),
    );
  }
}