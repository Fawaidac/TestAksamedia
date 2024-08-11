import 'package:flutter/material.dart';
import 'package:test_aksamedia/core/theme/app_colors.dart';
import 'package:test_aksamedia/core/theme/app_fonts.dart';

class KeteranganProdukWidget extends StatelessWidget {
  const KeteranganProdukWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffE2E8F0), width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ukuran",
            style: AppFonts.inter(
                fontSize: 14,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xffE6E7E7),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: AppColors.blackColor)),
                child: Text(
                  "Paket 1",
                  style: AppFonts.inter(
                      fontSize: 14,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xffE6E7E7),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Paket 2",
                  style: AppFonts.inter(
                      fontSize: 14,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Warna",
            style: AppFonts.inter(
                fontSize: 14,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.blackColor,
                radius: 27,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffDDB69A),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                backgroundColor: Color(0xff5B3E36),
                radius: 27,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Stok : ",
                style: AppFonts.inter(
                    fontSize: 14,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "99+ pcs ",
                style: AppFonts.inter(
                    fontSize: 14,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
