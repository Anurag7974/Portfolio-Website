import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

import 'components/glass_content.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png")
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
            children: [
              LogoAndBlurBox(size: size, key: UniqueKey(),),
              Positioned(
                bottom: 0,
                  right: 0,
                  child: PersonPic(key: UniqueKey(),),
              ),
              Positioned(
                bottom: 0,
                  child: Menu()
              ),
            ],
        ),
      ),
    );
  }
}







