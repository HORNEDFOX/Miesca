import 'package:flutter/material.dart';
import 'package:miesca/ui/widgets/areas.dart';

import '../../generated/l10n.dart';
import '../textstyle/text_style.dart';
import '../theme/colors_light.dart';
import 'building_card.dart';

class BuildingSection extends StatelessWidget {
  const BuildingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 200.0,
      width: MediaQuery.of(context).size.width - 75.0,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 20.0),
              width: MediaQuery.of(context).size.width - 75.0,
              child: RichText(
                text: TextSpan(
                  text: '${S.current.building_section}',
                  style: headline1.copyWith(
                    color: lightSecondaryText,
                  ),
                  children: [
                    TextSpan(
                      text: '.',
                      style: headline1.copyWith(
                        color: lightPrimary,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.end,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Flexible(
                child: Text(
                  '${S.current.building_section_description}',
                  style: bodytext1.copyWith(
                    color: lightSecondaryText,
                    height: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 8.0,
                children: [
                  AreasChips(context, text: "Vitebsk Region", count: 56),
                  AreasChips(context, text: "Minsk Region", count: 98),
                  AreasChips(context, text: "Mogilev Region", count: 109),
                  AreasChips(context, text: "Brest Region", count: 17),
                  AreasChips(context, text: "Grodno Region", count: 84),
                  AreasChips(context, text: "Gomel Region", count: 23),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: RichText(
                text: TextSpan(
                    text: '${S.current.head_line_card}',
                    style: headline2.copyWith(
                      letterSpacing: 0,
                      color: lightSecondaryText,
                    ),
                    children: [
                      TextSpan(
                        text: '.',
                        style: headline2.copyWith(
                          color: lightPrimary,
                        ),
                      )
                    ]),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(204, 204, 204, 0.1),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: 300,
              padding: const EdgeInsets.only(left: 20.0),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return BuildingCard();
                },
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
