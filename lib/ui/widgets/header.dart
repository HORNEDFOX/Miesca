import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../textstyle/text_style.dart';
import '../theme/colors_light.dart';
import 'arc_line.dart';
import 'circle_avatar.dart';

Widget Header(BuildContext context) {
  return Container(
      child: Stack(
    children: [
      ArcAvatar(),
      ArcLine(
        context: context,
        radius: 60,
      ),
      ArcLine(
        context: context,
        radius: 110,
      ),
      ArcLine(
        context: context,
        radius: 160,
      ),
      ArcLine(
        context: context,
        radius: 210,
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: '${S.current.app_name}',
                  style: headline1.copyWith(
                    color: lightSecondaryText,
                  ),
                  children: [
                    TextSpan(
                      text: '.',
                      style: headline1.copyWith(
                        color: lightPrimary,
                      ),
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0),
              child: Text(
                '${S.current.app_tagline}',
                style: bodytext1,
              ),
            ),
          ],
        ),
      ),
    ],
  ));
}
