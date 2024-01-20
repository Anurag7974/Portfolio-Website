import 'package:flutter/material.dart';

import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({required Key key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/AK1.png", width: 80, height: 80,),
        const Spacer(flex: 1,),
        GlassContent(size: size, key: UniqueKey(),),
        const Spacer(flex: 3,),
      ],
    );
  }

}
