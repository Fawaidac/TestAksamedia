import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  final String imagePath;

  const BackgroundImageWidget({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Spacer(flex: 1), // 1/4 of the screen height
        ],
      ),
    );
  }
}
