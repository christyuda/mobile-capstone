import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenSatu extends StatelessWidget {
  const ScreenSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildHeader(media),
              _buildPremiumCounseling(),
              // _buildRecommendations(media),
              // _buildVouchers(media),
              // _buildArticles(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(Size media) {
    return Container(
      width: double.infinity,
      height: media.height,
      child: Stack(
        children: [
          _buildBackgroundGradient(media),
          _buildUserInfo(),
          _buildNotificationButton(),
          _buildPremiumCounselingCard(),
          _buildRecommendationsTitle(),
          _buildRecommendationsCarousel(media),
          _buildVoucherTitle(),
          _buildVoucherCarousel(media),
          // _buildArticleTitle(),
          // _buildArticleCarousel(),
        ],
      ),
    );
  }

  Widget _buildBackgroundGradient(Size media) {
    return Positioned(
      left: 0,
      right: 0,
      child: Align(
        child: SizedBox(
          width: media.width,
          height: 250,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0),
              ),
              gradient: LinearGradient(
                begin: Alignment(-1, -1),
                end: Alignment(1, 1),
                colors: <Color>[Color(0xffcce7ff), Color(0xff2a99ff)],
                stops: <double>[0, 1],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    return const Positioned(
      top: 80,
      left: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/img/profile.png'),
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Halo, Budi',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Bagaimana perasaanmu hari ini?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationButton() {
    return Positioned(
      top: 80,
      right: 15,
      child: IconButton(
        icon: Icon(Icons.notifications, size: 30, color: Colors.white),
        onPressed: () {},
      ),
    );
  }

  Widget _buildPremiumCounselingCard() {
    return Positioned(
      top: 160,
      left: 20,
      right: 20,
      bottom: 560,
      child: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
        decoration: BoxDecoration(
          color: const Color(0xffcce7ff),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ingin pengalaman konseling yang lebih mendalam dan personal?',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Jelajahi layanan konseling premium kami dengan psikolog terbaik',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 11, horizontal: 2),
              child: SizedBox(
                width: 100,
                height: 150,
                child: Transform.scale(
                  scale: 1.2,
                  child: Image.asset('assets/img/image52.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPremiumCounseling() {
    // Your premium counseling widget content goes here
    return Container();
  }

  Widget _buildRecommendationsTitle() {
    return const Positioned(
      top: 310,
      left: 10,
      child: Text(
        'Rekomendasi Konseling',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildRecommendationsCarousel(Size media) {
    return Positioned(
      top: 340,
      left: 0,
      right: 0,
      child: SizedBox(
        width: media.width,
        child: CarouselSlider(
          options: CarouselOptions(
            height: 135,
            enableInfiniteScroll: true,
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 2,
          ),
          items: [
            _buildRecommendationItem(
              'assets/img/Frame01.png',
              'Konseling Instant',
              'Anda membutuhkan dukungan?\nMulai obrolan dengan psikolog sekarang.',
            ),
            _buildRecommendationItem(
              'assets/img/Frame01.png',
              'Konseling Instant',
              'Anda membutuhkan dukungan?\nMulai obrolan dengan psikolog sekarang.',
            ),
            _buildRecommendationItem(
              'assets/img/Frame01.png',
              'Konseling Instant',
              'Anda membutuhkan dukungan?\nMulai obrolan dengan psikolog sekarang.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendationItem(
      String imagePath, String title, String description) {
    return Container(
      color: Color(0xFFAAD6FF),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          right: 40,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        description,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Mulai Sekarang',
                          style: TextStyle(fontSize: 12),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(3, 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVoucherTitle() {
    return Positioned(
      top: 485,
      left: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Voucher',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVouchers(Size media) {
    return Positioned(
      top: 520,
      left: -30,
      right: 50,
      child: _buildVoucherCarousel(media),
    );
  }

  Widget _buildVoucherCarousel(Size media) {
    return Positioned(
      top: 520,
      left: -30,
      right: 50,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 130,
          enableInfiniteScroll: false,
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.8,
        ),
        items: [
          _buildVoucherItem('assets/img/kupon.png'),
          _buildVoucherItem('assets/img/kupon.png'),
          _buildVoucherItem('assets/img/kupon.png'),
        ],
      ),
    );
  }

  Widget _buildVoucherItem(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Widget _buildArticleTitle() {
  //   return Positioned(
  //     top: 660,
  //     left: 20,
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Artikel',
  //           style: TextStyle(
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //             color: Colors.black,
  //           ),
  //         ),
  //         SizedBox(height: 10),
  //       ],
  //     ),
  //   );
  // }

//   Widget _buildArticleCarousel() {
//     return CarouselSlider(
//       options: CarouselOptions(
//         height: 150,
//         enableInfiniteScroll: false,
//         autoPlay: false,
//         enlargeCenterPage: true,
//       ),
//       items: [
//         ArticleCard(imagePath: 'assets/img/article.png', title: 'Article 1'),
//         ArticleCard(imagePath: 'assets/img/article.png', title: 'Article 2'),
//         // Add more cards as needed
//       ],
//     );
//   }
// }
}
