import 'package:flutter/material.dart';
import 'package:miesca/ui/theme/colors_light.dart';
import 'package:miesca/ui/widgets/button_red.dart';

import '../generated/l10n.dart';
import '../ui/textstyle/text_style.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 38.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: RichText(
                          text: TextSpan(
                              text: '${S.current.app_name}',
                              style: headline1.copyWith(
                                color: lightPrimaryText,
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
                      ),
                      SizedBox(
                        width: 11.0,
                      ),
                      Flexible(
                        child: Text(
                          '${S.current.app_description}',
                          style: bodytext1.copyWith(
                            color: lightPrimaryText,
                            height: 2.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                ButtonRed(
                    context: context,
                    route: 'home/menu',
                    widthbutton: MediaQuery.of(context).size.width,
                    text: S.current.button_start,
                    horizontalmargin: 38.0),
                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
