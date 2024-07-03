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
