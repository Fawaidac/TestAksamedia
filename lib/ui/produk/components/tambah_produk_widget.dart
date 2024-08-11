import 'package:flutter/material.dart';
import 'package:test_aksamedia/core/theme/app_colors.dart';
import 'package:test_aksamedia/core/theme/app_fonts.dart';

class TambahProdukWidget extends StatelessWidget {
  const TambahProdukWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.blackColor),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Tambahkan ke toko',
                style: AppFonts.inter(
                    fontSize: 14,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Container(
          height: 48,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          width: 100,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColor,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: AppColors.whiteColor,
              )),
        ),
      ],
    );
  }
}
