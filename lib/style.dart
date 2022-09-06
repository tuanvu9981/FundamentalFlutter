import 'package:flutter/material.dart';

const LargeTextSize = 18.0;
const MediumTextSize = 15.0;
const BodyTextSize = 12.5;

const String FontNameDefault = 'Monserrat';
// core family name defined in pub spec yaml

const AppBarTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    color: Colors.white);

const Body1TextStyle = TextStyle(
    fontFamily: FontNameDefault,
    // fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    color: Colors.black);

const TitleTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w600,
    fontSize: LargeTextSize,
    color: Colors.black);
