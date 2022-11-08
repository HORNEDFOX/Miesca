import 'package:flutter/material.dart';
import 'package:miesca/ui/widgets/header.dart';
import 'package:miesca/ui/widgets/menu.dart';

import '../ui/widgets/building_section.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Header(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    MenuMiesca(),
                    BuildingSection(),
                  ],
                ),
                Row(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
