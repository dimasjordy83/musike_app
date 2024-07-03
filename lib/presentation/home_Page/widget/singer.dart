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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: songsingers.map((song) {}).toList(),
      ),
    );
  }
}
