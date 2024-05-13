import 'package:flutter/material.dart';

class PlaySong extends StatefulWidget {
  const PlaySong({super.key});

  @override
  State<PlaySong> createState() => _PlaySongState();
}

class _PlaySongState extends State<PlaySong> {
  double _currentSliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: MediaQuery.of(context).size.width * 0.94,
        margin: EdgeInsets.only(left: 4),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 30, 211, 36),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Center(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  margin: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 30, 30),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
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
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'James Adam',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 30, 30),
                    )),
                Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 30, 30),
                    ))
              ],
            ),
          ),
          Container(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.772,
                padding: EdgeInsets.only(left: 8, right: 8),
                child: SliderTheme(
                  data: SliderThemeData(
                    trackShape: RoundedRectSliderTrackShape(),
                    activeTrackColor: Color.fromARGB(255, 75, 142, 150),
                    inactiveTrackColor: Color.fromARGB(255, 235, 240, 245),
                    thumbColor: Colors.white,
                    thumbShape: CustomSliderThumbCircle(
                        thumbRadius: 5,
                        borderSize: 2.0,
                        borderColor: Color.fromARGB(255, 75, 142, 150)),
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
                padding: EdgeInsets.only(left: 5, right: 20),
                child: Text(
                  "-1:40",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          )
        ])));
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final double borderSize;
  final Color borderColor;

  CustomSliderThumbCircle({
    required this.thumbRadius,
    required this.borderSize,
    required this.borderColor,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius + borderSize);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final Paint borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderSize;

    final Paint innerCirclePaint = Paint()
      ..color = sliderTheme.thumbColor!
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, thumbRadius + borderSize, borderPaint);
    canvas.drawCircle(center, thumbRadius, innerCirclePaint);
  }
}
