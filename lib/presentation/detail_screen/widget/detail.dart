import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class MyDetailButton extends StatefulWidget {
  const MyDetailButton({super.key});

  @override
  State<MyDetailButton> createState() => _MyDetailButtonState();
}

class _MyDetailButtonState extends State<MyDetailButton> {
  double _currentSliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.98,
        margin: EdgeInsets.only(left: 4),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Center(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Hidup Seperti Ini',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'James Adam',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(right: 16),
                    child: SvgPicture.asset(
                      'assets/images/img_twitter.svg',
                      fit: BoxFit.contain,
                    )),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 8),
                  child: SvgPicture.asset(
                    'assets/images/img_vuesax_bold_music_filter.svg',
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.83,
                padding: EdgeInsets.only(left: 8, right: 8),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackShape: RoundedRectSliderTrackShape(),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color.fromARGB(255, 235, 240, 245),
                    thumbColor: Colors.white,
                    overlayColor: Colors.transparent,
                    // Mengatur padding atas dan bawah menjadi 0
                    overlayShape: SliderComponentShape.noOverlay,
                    trackHeight: 8.0,
                  ),
                  child: Slider(
                    value: _currentSliderValue,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "-1:40",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Mengatur posisi main axis ke center
              crossAxisAlignment: CrossAxisAlignment
                  .center, // Mengatur posisi cross axis ke center
              children: [
                Expanded(
                  child: Container(
                    height: 34,
                    width: 34,
                    child: SvgPicture.asset(
                      'assets/images/img_user_white_a700_32x32.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 36),
                Expanded(
                  child: Container(
                    height: 34,
                    width: 34,
                    child: SvgPicture.asset(
                      'assets/images/img_user_white_a700.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(left: 36.75, right: 36.75),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/img_settings.svg',
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 34,
                    width: 34,
                    child: Transform.rotate(
                      angle: math.pi, // Rotasi 180 derajat (sudut dalam radian)
                      child: SvgPicture.asset(
                        'assets/images/img_user_white_a700_32x32.svg',
                        fit: BoxFit.contain,
                        matchTextDirection: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 36),
                Expanded(
                  child: Container(
                    height: 34,
                    width: 34,
                    child: SvgPicture.asset(
                      'assets/images/img_user_32x32.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 34,
          ),
          Center(
            child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                  child: Text(
                'Open lirics',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              )),
            ),
          ),
        ])));
  }
}
