import 'package:barbershope/constans.dart';
import 'package:barbershope/models/rive_asset.dart';
import 'package:barbershope/pages/components/side_menu_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'info_card.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 288,
        color: KoutlineBorderColor,
        child: SafeArea(
          child: Column(children: [
            InfoCard(
              name: "sajad nowroozi",
              profession: "Programmer",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 32, bottom: 16),
              child: Text(
                "Browse".toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white70),
              ),
            ),
            ...sideMenus.map(
              (menu) => SideMenuTile(
                menu: menu,
                riveonInit: (artboard) {
               
                },
                press: () {


                },
                inActive: false,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
