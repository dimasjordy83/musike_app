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

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
     
    );
  }
}
