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
          decoration: BoxDecoration(
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
                            decoration: BoxDecoration(
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
                    Positioned(
                      top: 80,
                      left: 40,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/profile_image.jpg'), // Replace with your image asset
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
                        icon: Icon(size: 30, Icons.notifications),
                        color: Colors.white,
                        onPressed: () {
                          // Handle notification icon tap
                        },
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 20,
                      right: 20,
                      bottom: 560,
                      child: Container(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 50),
                        decoration: BoxDecoration(
                          color: Color(0xffcce7ff),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 40),
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
                                    SizedBox(height: 20),
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
                            SizedBox(
                              width: 60,
                              height: 60,

                              child: Image.asset(
                                  'assets/banner_image.jpg'), // Replace with your image asset
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 370, // Adjust the top value as needed
                      left: 10,
                      child: Text(
                        'Rekomendasi Konseling',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    //   backgroundColor: Colors.white,
    //   body: SingleChildScrollView(
    //     child: Container(
    //       width: double.infinity,
    //       decoration: BoxDecoration(
    //         color: Colors.white,
    //       ),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Container(
    //             width: double.infinity,
    //             height: media.height,
    //             child: Stack(children: [
    //               Positioned(
    //                 left: 0,
    //                 right: 0,
    //                 child: Align(
    //                   child: SizedBox(
    //                     width: media.width,
    //                     height: 250,
    //                     child: Container(
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.only(
    //                           bottomRight: Radius.circular(25.0),
    //                           bottomLeft: Radius.circular(25.0),
    //                         ),
    //                         gradient: LinearGradient(
    //                           begin: Alignment(-1, -1),
    //                           end: Alignment(1, 1),
    //                           colors: <Color>[
    //                             Color(0xffcce7ff),
    //                             Color(0xff2a99ff)
    //                           ],
    //                           stops: <double>[0, 1],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               Positioned(
    //                 child: Container(
    //                   width: 365,
    //                   height: 100,
    //                   color: Colors.amberAccent,
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [],
    //                   ),
    //                 ),
    //               )
    //             ]),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
