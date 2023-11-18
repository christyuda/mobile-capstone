import 'package:carousel_slider/carousel_slider.dart';
import 'package:empathi_care/view/widget/article_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenSatu extends StatelessWidget {
  const ScreenSatu({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: media.height,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      child: Align(
                        child: SizedBox(
                          width: media.width,
                          height: 250,
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25.0),
                                bottomLeft: Radius.circular(25.0),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(-1, -1),
                                end: Alignment(1, 1),
                                colors: <Color>[
                                  Color(0xffcce7ff),
                                  Color(0xff2a99ff)
                                ],
                                stops: <double>[0, 1],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 80,
                      left: 40,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img/profile.png'),
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
                    ),
                    Positioned(
                      top: 80,
                      right: 15,
                      child: IconButton(
                        icon: const Icon(size: 30, Icons.notifications),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 20,
                      right: 20,
                      bottom: 560,
                      child: Container(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 30),
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
                              margin: EdgeInsets.symmetric(
                                  vertical: 11, horizontal: 2),
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
                    ),
                    const Positioned(
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
                    ),
                    Positioned(
                      top: 340,
                      left: 0,
                      right: 0,
                      child: CarouselSlider(
                        options: CarouselOptions(
                            height: 135,
                            enableInfiniteScroll: true,
                            autoPlay: false,
                            enlargeCenterPage: true,
                            viewportFraction: 2),
                        items: [
                          Container(
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
                                          image: AssetImage(
                                              'assets/img/Frame01.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Konseling Instant',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black45,
                                              ),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              'Anda membutuhkan dukungan?\nMulai obrolan dengan psikolog sekarang.',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
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
                          ),

                          //item kedua
                          Container(
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
                                          image: AssetImage(
                                              'assets/img/Frame01.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Konseling Instant',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black45,
                                              ),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              'Anda membutuhkan dukungan?\nMulai obrolan dengan psikolog sekarang.',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
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
                          ),

                          //item ketiga ya
                          Container(
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
                                          image: AssetImage(
                                              'assets/img/Frame01.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Konseling Instant',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black45,
                                              ),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              'Anda membutuhkan dukungan?\nMulai obrolan dengan psikolog sekarang.',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
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
                          ),
                        ],
                      ),
                    ),
                    Positioned(
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
                    ),
                    SizedBox(height: 20),
                    Positioned(
                      top: 520,
                      left: -30,
                      right: 50,
                      child: CarouselSlider(
                        options: CarouselOptions(
                            height: 130,
                            enableInfiniteScroll: false,
                            autoPlay: false,
                            enlargeCenterPage: true,
                            viewportFraction: 0.8),
                        items: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/img/kupon.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/img/kupon.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/img/kupon.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //item kedua
                        ],
                      ),
                    ),
                    Positioned(
                      top: 660,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Artikel',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 150,
                              enableInfiniteScroll: false,
                              autoPlay: false,
                              enlargeCenterPage: true,
                            ),
                            items: [
                              ArticleCard(
                                imagePath: 'assets/img/article.png',
                                title: 'Article 1',
                              ),
                              ArticleCard(
                                imagePath: 'assets/img/article2.png',
                                title: 'Article 2',
                              ),
                              // Add more cards as needed
                            ],
                          ),
                        ],
                      ),
                    ),

                    // CarouselSlider(
                    //   options: CarouselOptions(
                    //     height: 200,
                    //     enableInfiniteScroll: true,
                    //     autoPlay: true,
                    //     enlargeCenterPage: true,
                    //     viewportFraction: 0.8,
                    //   ),
                    //   items: [
                    //     // Card 1
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(15),
                    //         color: Colors
                    //             .blue, // You can set your desired color or use an image
                    //       ),
                    //       child: ClipRRect(
                    //         borderRadius: BorderRadius.circular(15),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               'assets/img/card_image_1.png', // Replace with your image path
                    //               width: 100,
                    //               height: 100,
                    //               fit: BoxFit.cover,
                    //             ),
                    //             SizedBox(height: 10),
                    //             Text(
                    //               'Card 1',
                    //               style: TextStyle(
                    //                 fontSize: 18,
                    //                 fontWeight: FontWeight.bold,
                    //                 color: Colors.white,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),

                    //     // Card 2
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(15),
                    //         color: Colors
                    //             .green, // You can set your desired color or use an image
                    //       ),
                    //       child: ClipRRect(
                    //         borderRadius: BorderRadius.circular(15),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               'assets/img/card_image_2.png', // Replace with your image path
                    //               width: 100,
                    //               height: 100,
                    //               fit: BoxFit.cover,
                    //             ),
                    //             SizedBox(height: 10),
                    //             Text(
                    //               'Card 2',
                    //               style: TextStyle(
                    //                 fontSize: 18,
                    //                 fontWeight: FontWeight.bold,
                    //                 color: Colors.white,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
