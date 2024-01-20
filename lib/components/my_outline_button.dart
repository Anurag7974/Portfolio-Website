import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget{
  const MyOutlineButton({required Key key, required this.text, required this.imageSrc}) : super(key: key);
  final String imageSrc, text;
  // final Function press;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)
          ),
          side: const BorderSide(color: Color(0xFFEDEDED)),
        ),
        onPressed: (){},
        child: Row(
          children: [
            Image.asset(imageSrc, height: 40),
            const SizedBox(width: kDefaultPadding),
            Text(text),
          ],
        ),
      ),
    );
  }

}