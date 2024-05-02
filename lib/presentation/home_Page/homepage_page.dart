import 'package:flutter/material.dart';
import 'package:music_app/widget/app_bar.dart';
import 'package:music_app/widget/container_made.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 242, 242),
      appBar: MyAppbar(),
      body: SizedBox(
        // width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: [MyMade()],
        ),
      ),
    );
  }
}
