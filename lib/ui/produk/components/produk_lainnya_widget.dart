import 'package:flutter/material.dart';
import 'package:test_aksamedia/core/theme/app_colors.dart';
import 'package:test_aksamedia/core/theme/app_fonts.dart';
import 'package:test_aksamedia/core/widgets/custom_button.dart';

class ProdukLainnyaWidget extends StatelessWidget {
  const ProdukLainnyaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(child: itemGridView(false)),
            SizedBox(
              width: 10,
            ),
            Expanded(child: itemGridView(true))
          ],
        ),
        Row(
          children: [
            Expanded(child: itemGridView(false)),
            SizedBox(
              width: 10,
            ),
            Expanded(child: itemGridView(true))
          ],
        )
      ],
    ));
  }

  Widget itemGridView(bool active) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/produk.png',
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
              ),
              active
                  ? Positioned(
                      top: 0,
                      right: 8,
                      child: Image.asset(
                        'assets/images/new-tage.png',
                      ),
                    )
                  : SizedBox(),
              Positioned(
                bottom: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    '30% Komisi',
                    style: AppFonts.inter(
                        fontSize: 12,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Beauty Set by Irvie',
          style: AppFonts.inter(
              fontSize: 12,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w500),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          'Harga reseller',
          style: AppFonts.inter(
              fontSize: 10,
              color: AppColors.greyColor,
              fontWeight: FontWeight.w500),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Rp142.400',
              style: AppFonts.inter(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w700),
            ),
            Image.asset(
              'assets/images/Frame.png',
              height: 10,
            )
          ],
        ),
        CustomButton(onPressed: () {}, text: 'Bagikan Produk')
      ],
    );
  }
}
