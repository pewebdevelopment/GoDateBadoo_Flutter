import 'package:flutter/material.dart';

import 'media.dart';

class Customtextfild {
  static Widget textField(name1,textcolor,wi) {
    return Container(
        color: Colors.transparent,
        height: height / 20,
        width: wi,
        child: TextField(
          style: TextStyle(color: textcolor),
          decoration: InputDecoration(
            hintText: name1,
            hintStyle: const TextStyle(color: Colors.grey),
          ),
        ),
    );
  }
}