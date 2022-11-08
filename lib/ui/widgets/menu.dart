import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../textstyle/text_style.dart';
import '../theme/colors_light.dart';
import 'menu_item.dart';

class MenuMiesca extends StatefulWidget {
  const MenuMiesca({Key? key}) : super(key: key);

  @override
  State<MenuMiesca> createState() => _MenuMiescaState();
}

class _MenuMiescaState extends State<MenuMiesca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200.0,
      width: 75.0,
      decoration: const BoxDecoration(
          color: lightPrimary,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(120.0),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 75.0,
            height: MediaQuery.of(context).size.height - 200.0 - 200.0,
            padding: EdgeInsets.only(top: 60.0),
            child: ListView(
              padding: EdgeInsets.only(left: 20.0),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                MenuItemMiesca(text: S.current.menu_item_1, color: lightPrimaryText),
                MenuItemMiesca(text: S.current.menu_item_2, color: lightSecondary),
                MenuItemMiesca(text: S.current.menu_item_3, color: lightSecondary),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 30.0),
            child: Text('EN',
              style: headline2.copyWith(
                color: lightPrimaryText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
