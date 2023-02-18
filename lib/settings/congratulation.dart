import 'package:dating/utils/media.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/colornotifire.dart';
import '../utils/string.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  State<Congratulation> createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  late ColorNotifire notifire;

  getdarkmodepreviousstate() async {
    final prefs = await SharedPreferences.getInstance();
    bool? previusstate = prefs.getBool("setIsDark");
    if (previusstate == null) {
      notifire.setIsDark = false;
    } else {
      notifire.setIsDark = previusstate;
    }
  }

  List img = [
    "image/like2.png",
    "image/visitor.png",
    "image/rewinds.png",
    "image/Security.png",
    "image/star2.png",
    "image/fire.png",
  ];
  List high = [
    height / 40,
    height / 30,
    height / 30,
    height / 30,
    height / 30,
    height / 30,
  ];

  List names = [
    CustomStrings.liked,
    CustomStrings.swipe,
    CustomStrings.supers,
    CustomStrings.boosts,
    CustomStrings.passport,
    CustomStrings.whoyou,
  ];

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Scaffold(
      backgroundColor: notifire.getprimerycolor,

    );
  }
}
