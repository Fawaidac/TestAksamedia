import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/theme/app_colors.dart';

class PageIndicatorWidget extends StatelessWidget {
  final PageController controller;

  const PageIndicatorWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.30),
      child: SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: const ExpandingDotsEffect(
          dotWidth: 8,
          dotHeight: 8,
          spacing: 5,
          dotColor: AppColors.whiteColor,
          activeDotColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}
