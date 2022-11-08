import 'package:flutter/material.dart';

import '../textstyle/text_style.dart';
import '../theme/colors_light.dart';

Widget AreasChips (BuildContext context, {required String text, required int count})
{
  return Chip(
      labelPadding: EdgeInsets.all(2.0),
      label: RichText(
        text: TextSpan(
            text: '${count}  ',
            style: headline4.copyWith(
              color: lightPrimary,
            ),
            children: [
              TextSpan(
                text: '${text}',
                style: bodytext1.copyWith(
                  fontSize: 13,
                  color: lightSecondaryText,
                ),
              )
            ]),
      ),
      backgroundColor: lightChips,
      elevation: 0.0,
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
  );
}