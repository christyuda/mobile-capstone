import 'package:flutter/material.dart';

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
                child: Stack(children: [
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
                    child: Container(
                      width: 365,
                      height: 695,
                      color: Colors.amberAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
