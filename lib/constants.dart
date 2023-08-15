import 'package:flutter/material.dart';

const kBlueShade = Color(0xFF05B2D8);

const kTextFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
    hintText: '',
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kBlueShade, width: 1.2)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kBlueShade, width: 2.0)),
    hintStyle: TextStyle(color: Colors.grey));
