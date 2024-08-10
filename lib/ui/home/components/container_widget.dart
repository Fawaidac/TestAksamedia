import 'package:flutter/material.dart';
import 'package:test_aksamedia/core/theme/app_colors.dart';
import 'package:test_aksamedia/core/theme/app_fonts.dart';
import 'package:test_aksamedia/core/widgets/custom_button.dart';

class ContainerWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onNext;

  const ContainerWidget({
    required this.title,
    required this.subtitle,
    required this.onNext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10),
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppFonts.inter(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              subtitle,
              style: AppFonts.inter(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          CustomButton(onPressed: onNext, text: "Selanjutnya"),
        ],
      ),
    );
  }
}
