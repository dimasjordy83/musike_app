import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppbarDetail extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(
              left: 8,
              // right: MediaQuery.of(context).size.width * 0.09,
            ),
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset(
              'assets/images/img_arrow_left.svg',
              fit: BoxFit.contain,
            )),
      ),
      title: Row(
        children: [
          // Container(
          //     width: 20,
          //     height: 20,
          //     margin: EdgeInsets.only(
          //       left: 8,

          //       // right: MediaQuery.of(context).size.width * 0.09,
          //     ),
          //     child: SvgPicture.asset(
          //       'assets/images/img_arrow_left.svg',
          //       fit: BoxFit.contain,
          //     )),
          Container(
              margin: EdgeInsets.only(left: 8),
              child: Text(
                "Indonesian pops",
                style: TextStyle(fontSize: 18),
              )),
          Spacer(),
          Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(
                left: 20,
              ),
              child: SvgPicture.asset(
                'assets/images/img_favorite.svg',
                fit: BoxFit.contain,
              )),
          Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(
                left: 12,
                right: 20,
                // right: MediaQuery.of(context).size.width * 0.09,
              ),
              child: SvgPicture.asset(
                'assets/images/img_megaphone.svg',
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}
