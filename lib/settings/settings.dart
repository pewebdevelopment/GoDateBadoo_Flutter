
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/colornotifire.dart';
import '../utils/media.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title'

    );
  }
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Scaffold(
      backgroundColor: notifire.getprimerycolor,

    );
  }

  Widget profiles(img,name,se) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 18),
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              height: height / 15,
              width: width / 7,
              color: Colors.transparent,
              child: CircleAvatar(
                backgroundColor: notifire.getpinkscolor.withOpacity(0.4),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(height / 50),
                    child: Image.asset(
                      img,
                      color: notifire.getpinkscolor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width / 40,
            ),
            Text(
              name,
              style: TextStyle(
                  color: notifire.getdarkscolor,
                  fontSize: height / 50,
                  fontFamily: 'Gilroy Bold'),
            ),
            const Spacer(),
            se,
          ],
        ),
      ),
    );
  }
}
