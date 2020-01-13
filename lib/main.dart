import 'package:flutter/material.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const TextStyle topGreyStyle =
      TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle onlineGreyStyle =
      TextStyle(color: Colors.grey, fontSize: 35, fontWeight: FontWeight.w500);
  static const TextStyle gamblingBlackStyle =
      TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold);
  static const TextStyle textGreyStyle =
      TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500);
  static const TextStyle topWhiteStyle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle onlineWhiteStyle =
      TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500);

  static const TextStyle textWhiteStyle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500);

  final pages = [
    Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'GameCoin',
                  style: topGreyStyle,
                ),
                Text(
                  'Skip',
                  style: topGreyStyle,
                )
              ],
            ),
            Image.asset('assets/img/firstImage.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Online',
                  style: onlineGreyStyle,
                ),
                Text(
                  "Gambling",
                  style: gamblingBlackStyle,
                ),
                Text(
                  'Non voluptate veniam aute elit ipsum qui cillum dolor ex ad culpa ea ea occaecat.',
                  style: textGreyStyle,
                )
              ],
            )
          ],
        ),
      ),
    ),
    Container(
      color: Color(0xFF55006c),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GameCoin',
                  style: topWhiteStyle,
                ),
                Text(
                  'Skip',
                  style: topWhiteStyle,
                )
              ],
            ),
            Image.asset('assets/img/secondImage.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Online',
                  style: onlineWhiteStyle,
                ),
                Text(
                  "Gambling",
                  style: gamblingBlackStyle,
                ),
                Text(
                  'Non voluptate veniam aute elit ipsum qui cillum dolor ex ad culpa ea ea occaecat.',
                  style: textWhiteStyle,
                )
              ],
            )
          ],
        ),
      ),
    ),
    Container(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'GameCoin',
                  style: topGreyStyle,
                ),
                Text(
                  'Skip',
                  style: topGreyStyle,
                )
              ],
            ),
            Image.asset('assets/img/firstImage.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Online',
                  style: onlineGreyStyle,
                ),
                Text(
                  "Gambling",
                  style: gamblingBlackStyle,
                ),
                Text(
                  'Non voluptate veniam aute elit ipsum qui cillum dolor ex ad culpa ea ea occaecat.',
                  style: textGreyStyle,
                )
              ],
            )
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: LiquidSwipe(
            pages: pages,
            fullTransitionValue: 1000,
            enableSlideIcon: true,
            enableLoop: true,
            waveType: WaveType.liquidReveal,
            positionSlideIcon: 0.40,
          ),
        ),
      ),
    );
  }
}
