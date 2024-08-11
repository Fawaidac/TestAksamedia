import 'package:flutter/material.dart';
import 'package:test_aksamedia/core/theme/app_colors.dart';
import 'package:test_aksamedia/core/theme/app_fonts.dart';
import 'package:test_aksamedia/core/utils/image_assets.dart';
import 'components/container_widget.dart';
import 'components/background_image_widget.dart';
import 'components/page_indicator_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _controller = PageController();
  final List<String> _backgroundImages = [
    ImageAssets.firstBackground,
    ImageAssets.secondBackground,
    ImageAssets.thirdBackground,
  ];

  final List<String> _titles = [
    'Gratis Materi Belajar\nMenjadi Seller Handal',
    'Ribuan Produk\ndengan Kualitas Terbaik',
    'Toko Online Unik\nUntuk Kamu Jualan',
  ];

  final List<String> _subtitles = [
    'Nggak bisa jualan? Jangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
    'Tokorame menyediakan ribuan produk dengan\nkualitas derbaik dari seller terpercaya',
    'Subdomain unik dan toko online profesional\nsiap pakai',
  ];

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  void _skipToLastPage() {
    _controller.jumpToPage(_backgroundImages.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              children: List.generate(
                _backgroundImages.length,
                (index) => Stack(
                  children: [
                    BackgroundImageWidget(imagePath: _backgroundImages[index]),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ContainerWidget(
                        title: _titles[index],
                        subtitle: _subtitles[index],
                        onNext: _goToNextPage,
                        isLastSection: index == _backgroundImages.length - 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PageIndicatorWidget(controller: _controller),
            Positioned(
              top: 16,
              right: 16,
              child: Visibility(
                visible: _currentPage < _backgroundImages.length - 1,
                child: TextButton(
                  onPressed: _skipToLastPage,
                  child: Text(
                    'Lewati',
                    style: AppFonts.inter(
                      fontSize: 16,
                      color: AppColors.textColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
