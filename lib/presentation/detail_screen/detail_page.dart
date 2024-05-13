import 'package:flutter/material.dart';
import 'package:music_app/presentation/detail_screen/widget/app_bar_detail.dart';
import 'package:music_app/presentation/detail_screen/widget/detail.dart';
import 'dart:ui';

class MyDetail extends StatefulWidget {
  const MyDetail({super.key});

  @override
  State<MyDetail> createState() => _MyDetailState();
}

class _MyDetailState extends State<MyDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 242, 242),
        appBar: MyAppbarDetail(),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img_detail.png'),
                  fit: BoxFit.cover,
                ),
              ),
              // child: Image.asset('assets/images/img_detail.png'),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.52,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Center(
                  // child: PlaySong(),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            20), // sesuaikan dengan border radius di BoxDecoration
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 375,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Column(
                            children: [
                              MyDetailButton(),
                              Container(
                                width: 100,
                                height: 50,
                                color: Color.fromRGBO(255, 255, 255,
                                    0.5), // Warna putih dengan 50% transparansi
                                child: Text('Open lirik'),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
