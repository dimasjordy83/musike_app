import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Singer extends StatefulWidget {
  @override
  _SingerState createState() => _SingerState();
}

class _SingerState extends State<Singer> {
  List<Map<String, String>> songsingers = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    // pengambilan json dari internet
    final String url = 'https://jsonplaceholder.typicode.com/users';

    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        List<dynamic> users = json.decode(response.body);

        setState(() {
          songsingers = users.map((user) {
            return {
              'singer': user['name'].toString(), // mengubah dynamic ke String
              'img': 'assets/images/img_photo.png', // URL gambar default
            };
          }).toList();
        });
      } else {
        print('Gagal mengambil data: ${response.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
    }
  }

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
      width: 120,
      height: 160,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(img!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            singer ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
