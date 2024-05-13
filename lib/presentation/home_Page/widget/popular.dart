import 'package:flutter/material.dart';

class Mypopular extends StatelessWidget {
  const Mypopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Text(
            'Popular Singer',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Spacer(),
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
