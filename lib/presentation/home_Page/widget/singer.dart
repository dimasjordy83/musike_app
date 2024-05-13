import 'package:flutter/material.dart';

class Singer extends StatelessWidget {
  final List<Map<String, String>> songsingers = [
    {'singer': 'James Adam', 'img': 'assets/images/img_photo.png'},
    {'singer': '90s hiphop mix', 'img': 'assets/images/img_photo.png'},
    {'singer': '90s hiphop mix', 'img': 'assets/images/img_photo.png'},
    // Tambahkan lagu lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: songsingers.map((song) {
          return SongCard(
            singer: song['singer'],
            img: song['img'],
          );
        }).toList(),
      ),
    );
  }
}

class SongCard extends StatelessWidget {
  final String? singer;
  final String? img;

  const SongCard({
    Key? key,
    required this.singer,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 120,
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center, // Menengahkan widget secara vertikal
              child: Container(
                margin: EdgeInsets.only(top: 12),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Image.asset(img!),
              ),
            ),
            SizedBox(height: 12),
            Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Text(
                  singer ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )),
            SizedBox(height: 4),
          ],
        ));
  }
}
