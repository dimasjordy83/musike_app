import 'package:flutter/material.dart';

class MyMade extends StatelessWidget {
  final List<Map<String, String>> songsingers = [
    {
      'title': 'Indonesian pops',
      'singers': 'Nadine amizah, Ghea Indrawari, Yura Yunita'
    },
    {
      'title': '90s hiphop mix',
      'singers': 'Nadine amizah, Ghea Indrawari, Yura Yunita'
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
          );
        }).toList(),
      ),
    );
  }
}

class SongCard extends StatelessWidget {
  final String? title;
  final String? singers;

  const SongCard({
    Key? key,
    required this.title,
    required this.singers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 180,
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.all(8.0),
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
