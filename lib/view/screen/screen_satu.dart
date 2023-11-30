import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.blue, // Warna background biru
                height: media.height *
                    0.07, // Sesuaikan tinggi background sesuai kebutuhan
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 150),
                      child: Image.asset(
                        'assets/img/logo.png', // Path logo di assets
                        height: media.height *
                            0.044, // Sesuaikan tinggi logo sesuai kebutuhan
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications),
                      color: Colors.white, // Icon notifikasi
                      onPressed: () {
                        // Aksi ketika tombol notifikasi ditekan
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/Konten.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/Konten.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/Konten.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 190.0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 10),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/img/Frame.png',
                      ),
                      fit: BoxFit.cover),
                ),
                height: 183.0,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 15),
                  child: Text(
                    'Ayo tukar kupon diskon!',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 150.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Scroll secara horizontal
                  itemCount: 3, // Ganti jumlah item sesuai kebutuhan
                  itemBuilder: (context, index) {
                    // Ganti konten item sesuai kebutuhan
                    return Container(
                      margin: EdgeInsets.all(5),
                      width:
                          280.0, // Sesuaikan lebar container sesuai kebutuhan
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/Kupon${index + 1}.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 15),
                  child: Row(
                    children: [
                      Text(
                        'Rekomendasi Artikel',
                        style:
                            GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'Lihat Semua',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  crossAxisCount: 2, // Jumlah kolom
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // Agar tidak dapat digulir
                  children: List.generate(
                    4, // Jumlah item
                    (index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/img/cover${index + 1}.png',
                              width: 180,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Item $index',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
