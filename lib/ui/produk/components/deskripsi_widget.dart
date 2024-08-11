import 'package:flutter/material.dart';
import 'package:test_aksamedia/core/theme/app_colors.dart';
import 'package:test_aksamedia/core/theme/app_fonts.dart';

class DeskripsiWidget extends StatelessWidget {
  const DeskripsiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Divider(
          height: 20,
          color: Color(0xffE2E8F0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Deskripsi",
              style: AppFonts.inter(
                  fontSize: 16,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w500),
            ),
            Image.asset(
              'assets/images/document-copy.png',
              height: 20,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "*New Material*\nTerbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\nMenggunakan fit Relaxed Fit.\n-\nSIZE CHART RELAXED SHIRT....",
          style: AppFonts.inter(
              fontSize: 14,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selengkapnya",
                style: AppFonts.inter(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.blue,
              )
            ],
          ),
        ),
        const Divider(
          height: 20,
          color: Color(0xffE2E8F0),
        ),
      ],
    );
  }
}
