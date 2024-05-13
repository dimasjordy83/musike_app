import 'package:flutter/material.dart';

class Mymadetext extends StatelessWidget {
  const Mymadetext({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Text(
            'Made for you',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Spacer(), // Spacer untuk memberi ruang antara dua teks
          Text(
            'see all',
            style: TextStyle(
                fontSize: 12, color: Color.fromARGB(255, 75, 142, 150)),
          ),
        ],
      ),
    );
  }
}
