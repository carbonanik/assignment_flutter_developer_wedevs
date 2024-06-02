import 'package:flutter/material.dart';

const backgroundColor = Color(0xFFF8F8F8);
const primaryColor = Color(0xFFF75F55);
const hintColor = Color(0xFFA4A9AF);
const iconColor = Color(0xFF7C8592);
final shadowOneColor = const Color(0xFF395AB8).withOpacity(.10);
final shadowTwoColor = const Color(0xFF395AB8).withOpacity(.10);

const gradientOne = LinearGradient(
  colors: [
    Color(0xFFFF9472),
    Color(0xFFF2709C),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

final boxShadowOne =  BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  spreadRadius: 3,
  blurRadius: 5,
  offset: const Offset(4, 4), // changes position of shadow
);
