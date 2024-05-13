import 'package:flutter/material.dart';

class MyFavorite extends StatelessWidget {
  final List<Map<String, String>> songsingers = [
    {
      'title': 'Indonesian pops',
      'singers': 'Nadine amizah, Ghea Indrawari, Yura Yunita',
      'img': 'assets/images/img_rectangle_5.png'
    },
    {
      'title': '90s hiphop mix',
      'singers': 'Nadine amizah, Ghea Indrawari, Yura Yunita',
      'img': 'assets/images/img_rectangle_5_100x192.png'
    },
    // Tambahkan lagu lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: songsingers.map((song) {
          return SongCard(
            title: song['title'],
            singers: song['singers'],
            img: song['img'],
          );
        }).toList(),
      ),
    );
  }
}

class SongCard extends StatelessWidget {
  final String? title;
  final String? singers;
  final String? img;

  const SongCard({
    Key? key,
    required this.title,
    required this.singers,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 180,
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 192,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Image.asset(img!),
          ),
          SizedBox(height: 12),
          Text(
            title ?? '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 4),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(right: 50),
                child: Text(
                  singers ?? '',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
