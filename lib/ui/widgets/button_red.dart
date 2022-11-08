import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../textstyle/text_style.dart';
import '../theme/colors_light.dart';

Widget ButtonRed(
    {required BuildContext context,
    required double widthbutton,
    required String text,
    required double horizontalmargin,
    required String route}) {
  return Center(
    child: InkWell(
      onTap: () {
        Navigator.pushNamed(context, '${route}');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: horizontalmargin),
        width: widthbutton,
        height: 60.0,
        decoration: BoxDecoration(
          color: AdaptiveTheme.of(context).theme.primaryColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            '${text}',
            style: headline3.copyWith(
              color: lightPrimaryText,
            ),
          ),
        ),
      ),
    ),
  );
}
