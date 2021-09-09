import 'dart:ui';

import 'package:flutter/material.dart';

Widget textFrase(
    String label, double fontesize, dynamic weight, dynamic fontestyle) {
  return Text(
    "$label",
    textAlign: TextAlign.justify,
    style: TextStyle(
      fontSize: fontesize,
      fontWeight: weight,
      fontStyle: fontestyle,
      color: Colors.black,
    ),
  );
}

