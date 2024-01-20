import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocalCard extends StatefulWidget {
  const SocalCard(
      {super.key, required this.iconSrc, required this.name, required this.color});

  final String iconSrc, name;
  final Color color;

  @override
  _SocalCardState createState() => _SocalCardState();
}
class _SocalCardState extends State<SocalCard>{
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5
          ),
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover)kDefaultCardShadow]
          ),
          child: Row(
            children: [
              Image.asset(widget.iconSrc, height: 80, width: 80,),
              const SizedBox(width: kDefaultPadding,),
              Text(widget.name)
            ],
          ),
        ),
      ),
    );
  }
}