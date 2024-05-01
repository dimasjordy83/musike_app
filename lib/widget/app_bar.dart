import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Good morning Jordy!",
                style: TextStyle(fontSize: 18),
              )),
          Spacer(),
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(
              left: 20,
            ),
            color: Colors.red,
          ),
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(
              left: 12,
              right: 20,
              // right: MediaQuery.of(context).size.width * 0.09,
            ),
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
