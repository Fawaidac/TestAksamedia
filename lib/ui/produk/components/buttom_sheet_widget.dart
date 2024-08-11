import 'package:flutter/material.dart';
import 'package:test_aksamedia/core/theme/app_colors.dart';
import 'package:test_aksamedia/core/theme/app_fonts.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close)),
              Text(
                'Bagikan Produk',
                style: AppFonts.inter(
                    fontSize: 16,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          ListTile(
            title: Text(
              'Teks dan Link',
              style: AppFonts.inter(
                fontSize: 14,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(color: AppColors.greyColor),
          ListTile(
            title: Text(
              'Gambar',
              style: AppFonts.inter(
                fontSize: 14,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(color: AppColors.greyColor),
        ],
      ),
    );
  }
}
