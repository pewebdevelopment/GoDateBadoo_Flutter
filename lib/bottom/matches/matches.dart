import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/colornotifire.dart';
import '../../utils/string.dart';

class Matches extends StatefulWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
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
    "image/match2.png",
    "image/match3.png",
    "image/match7.png",
    "image/match8.png",
    "image/match9.png"
  ];

  List imgs = [
    "image/match12.png",
    "image/match11.png",
    "image/match10.png",
    "image/match9.png",
    "image/match8.png",
    "image/match7.png",
    "image/match6.png",
    "image/match5.png"
  ];

  List miles = [
    "4 miles",
    "22 miles",
    "8 miles",
    "76 miles",
    "4 miles",
    "22 miles",
    "8 miles",
    "76 miles",
  ];
  List matches = [
    CustomStrings.beth,
    CustomStrings.quin,
    CustomStrings.skylar,
    CustomStrings.steph,
    CustomStrings.beth,
    CustomStrings.quin,
    CustomStrings.skylar,
    CustomStrings.steph
  ];

  var seconditems = [
    'Popular',
    'Popular1',
    'Popular2',
  ];

  List names = [
    CustomStrings.photography,
    CustomStrings.nature,
    CustomStrings.music,
    CustomStrings.writing,
    CustomStrings.fashion,
  ];

  List items = [
    " 3.2k People",
    " 9.8k People",
    " 4.7k People",
    " 379 People",
    " 657 People",
  ];

  List images = [
    "image/match11.png",
    "image/match4.png",
    "image/match8.png",
    "image/match10.png",
    "image/match11.png",
  ];

  List disimage = [
    "image/match7.png",
    "image/match1.png",
    "image/match3.png",
    "image/match4.png",
    "image/match5.png",
  ];

  List away = [
    "16 km away",
    "4.8 km away",
    "2.2 km away",
    "17 km away",
    "20 km away",
  ];

  List country = [
    "BERLIN",
    "MUNICH",
    "HANOVER",
    "BERLIN",
    "GERMANY",
  ];

  List name = [
    "Halima, 19",
    "Vanessa, 18",
    "James, 20",
    "Vani, 24",
    "Sariya, 19",
  ];
  String seconddropdownvalue = 'Popular';

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Scaffold(
      backgroundColor: notifire.getprimerycolor,

    );
  }


}
