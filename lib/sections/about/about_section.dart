import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

import '../../components/default_function.dart';
import '../../components/my_outline_button.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(UniqueKey()),
                const Expanded(
                child: AboutSectionText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",),
              ),
              ExperienceCard(key: UniqueKey(), numOfExp: '01',),
               const Expanded(
                child: AboutSectionText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",),
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                key: UniqueKey(),
                text: 'Hire Me!',
                imageSrc: 'assets/images/hand.png',
              ),
             const SizedBox(width: kDefaultPadding * 1.5,),
             DefaultButton(
               imageSrc: 'assets/images/download.png',
               text: 'Download CV',
               key: UniqueKey(),
               press: (){}, ),
            ],
          ),
        ],
      ),
    );
  }
}







