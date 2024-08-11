import 'package:flutter/material.dart';
import 'package:test_aksamedia/core/theme/app_colors.dart';
import 'package:test_aksamedia/ui/produk/components/deskripsi_widget.dart';
import 'package:test_aksamedia/ui/produk/components/detail_harga_widget.dart';
import 'package:test_aksamedia/ui/produk/components/keterangan_produk_widget.dart';
import 'package:test_aksamedia/ui/produk/components/produk_lainnya_widget.dart';
import 'package:test_aksamedia/ui/produk/components/tambah_produk_widget.dart';

class ProdukView extends StatelessWidget {
  const ProdukView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: false,
          floating: false,
          backgroundColor: AppColors.whiteColor,
          shadowColor: Colors.transparent,
          expandedHeight: 370,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Container(
              height: 15,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/produk.png'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Image.asset('assets/images/properti.png')],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            color: AppColors.whiteColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailHargaWidget(),
                KeteranganProdukWidget(),
                DeskripsiWidget(),
                ProdukLainnyaWidget(),
                TambahProdukWidget(),
              ],
            ),
          ),
        )
      ],
    )));
  }
}
