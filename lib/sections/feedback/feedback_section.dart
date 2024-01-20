import 'package:flutter/material.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/Feedback.dart';

import 'components/feedback.card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
       constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
              title: "Feedback Received",
              subTitle: "Client's testimonials that inspired me a lot",
              color: Color(0xFF00B1FF)),
          const SizedBox(height: kDefaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(feedbacks.length, (index) => FeedbackCard(index: index,)),
          )
        ],),
    );
  }
}

