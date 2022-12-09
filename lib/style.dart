import 'package:flutter/material.dart';

const LargeTextSize = 20.0;
const MediumTextSize = 18.0;
const BodyTextSize = 15.0;

const String FontNameDefault = 'Monserrat';
// core family name defined in pub spec yaml

const AppBarTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    color: Colors.white);

const Body1TextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w400,
    fontSize: MediumTextSize,
    color: Colors.black);

const TitleTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w800,
    fontSize: LargeTextSize,
    color: Colors.black);
