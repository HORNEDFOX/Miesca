import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../textstyle/text_style.dart';
import '../theme/colors_light.dart';

Widget MenuItemMiesca({required String text, required Color color}) {
  return RotatedBox(
    quarterTurns: 3,
    child: Text('   ${text}   ',
      style: headline2.copyWith(
        color: color,
      ),
    ),
  );
}