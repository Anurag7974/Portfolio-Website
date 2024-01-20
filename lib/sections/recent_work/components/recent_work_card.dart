import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/RecentWork.dart';

class RecentWorkCard extends StatefulWidget{
  const RecentWorkCard({super.key, required this.index});
  final int index;
  // final Function press;
  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard>{
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultShadow]
        ),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(recentWorks[widget.index].category.toUpperCase()),
                      const SizedBox(height: kDefaultPadding / 2,),
                      Text(recentWorks[widget.index].title, style: Theme.of(context).textTheme.headline5?.copyWith(height: 1.5),),
                      const SizedBox(height: kDefaultPadding,),
                      const Text("View Details", style: TextStyle(decoration: TextDecoration.underline),)
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

}

