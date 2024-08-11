import 'package:flutter/material.dart';
import 'package:test_aksamedia/ui/produk/components/buttom_sheet_widget.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_fonts.dart';

class DetailHargaWidget extends StatelessWidget {
  const DetailHargaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: AppColors.yellowColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Text(
                      "NEW",
                      style: AppFonts.inter(
                          fontSize: 16,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "  Produk Baru",
                      style: AppFonts.inter(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => showCustomBottomSheet(context),
                child: Image.asset(
                  'assets/images/share.png',
                  height: 20,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Beauty Set by Irvie",
            style: AppFonts.poppins(
                fontSize: 20,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Irvie group official",
            style: AppFonts.inter(
                fontSize: 14,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text(
                    "Rp178.000",
                    style: AppFonts.inter(
                        fontSize: 16,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Harga Customer",
                    style: AppFonts.inter(
                        fontSize: 14,
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 1,
                height: 50,
                color: AppColors.blackColor,
              ),
              Expanded(
                  child: Column(
                children: [
                  Text(
                    "Rp178.000",
                    style: AppFonts.inter(
                        fontSize: 16,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Harga Customer",
                    style: AppFonts.inter(
                        fontSize: 14,
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ))
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
                color: AppColors.yellowColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Komisi",
                  style: AppFonts.inter(
                      fontSize: 14,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  " Rp35.600 ",
                  style: AppFonts.inter(
                      fontSize: 18,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "(20%)",
                  style: AppFonts.inter(
                      fontSize: 14,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const CustomBottomSheet();
      },
    );
  }
}
