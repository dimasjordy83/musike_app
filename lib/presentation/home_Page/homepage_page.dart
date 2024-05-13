import 'package:flutter/material.dart';
import 'package:music_app/widget/app_bar.dart';
import 'package:music_app/widget/bottom_nav.dart';
import 'package:music_app/widget/container_made.dart';
import 'package:music_app/widget/play_song.dart';
import 'package:music_app/widget/container_favorite.dart';
import 'package:music_app/presentation/home_Page/widget/made.dart';
import 'package:music_app/presentation/home_Page/widget/popular.dart';
import 'package:music_app/presentation/home_Page/widget/singer.dart';
import 'package:music_app/presentation/home_Page/widget/favorite.dart';
import 'dart:ui';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 242, 242),
      appBar: MyAppbar(),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Mymadetext(),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: MyMade(),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Mypopular(),
                  Singer(),
                  Favorite_text(),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: MyFavorite(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.62,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                // child: PlaySong(),
                child: Stack(
                  children: [
                    ClipRect(
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 250,
                              color: Colors.transparent,
                            ))),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: PlaySong(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Bottom_nav(),
    );
  }
}
