import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget{
  const DefaultButton({
    required Key key, required this.imageSrc, required this.text, required this.press
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return  FittedBox(
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding * 2.5,
            ),
            // onPressed: (){},
          ),
          onPressed: press(),
          child: Row(
            children: [
              Image.asset(imageSrc),
              const SizedBox(width: kDefaultPadding,),
              Text(text),
            ],
          )
      ),
    );
  }

}