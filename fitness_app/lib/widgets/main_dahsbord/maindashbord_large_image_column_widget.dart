import 'package:fitness_app/widgets/main_dahsbord/large_image_widget.dart';
import 'package:flutter/material.dart';


class LargeImageColumnWidget extends StatelessWidget {
  final double top;
  final double left;
  final double imageWidth;
  final double imageHeight;
  final double spacing;

  const LargeImageColumnWidget({
    super.key,
    required this.top,
    required this.left,
    required this.imageWidth,
    required this.imageHeight,
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LargeImageWidget(
            imagePath: 'assets/images/img_main_screen_06.png',
            width: imageWidth,
            height: imageHeight,
            titleText: 'Find me a personal Trainer',
            buttonText: 'Explore now',
          ),
          SizedBox(height: spacing),
          LargeImageWidget(
            imagePath: 'assets/images/img_main_screen_07.png',
            width: imageWidth,
            height: imageHeight,
            titleText: 'Find me a personal Trainer',
            buttonText: 'Explore now',
          ),
        ],
      ),
    );
  }
}