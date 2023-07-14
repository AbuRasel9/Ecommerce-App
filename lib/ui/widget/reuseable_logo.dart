import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

SvgPicture ReUseAbleLogo() {
  return SvgPicture.asset(
    "assets/images/logo.svg",
    width: 120,
    fit: BoxFit.scaleDown,
  );
}


