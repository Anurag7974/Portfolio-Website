import 'package:flutter/material.dart';
import 'package:my_portfolio/components/default_function.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    //  this height onlu for demo
    //   height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage("assets/images/bg_img_2.png"))
      ),
      child: const Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5,),
          SectionTitle(
              title: "Contact Me",
              subTitle: "For Project inquiry and information",
              color: Color(0xFF07E24A)),
         ContactBox(),
        ],
      ),

    );
  }

}

class ContactBox extends StatelessWidget{
  const ContactBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                iconSrc: "assets/images/skype.png",
                name: "TheFlutterWay",
                color: Color(0xFFD9FFFC),),
              SocalCard(
                iconSrc: "assets/images/whatsapp.png",
                name: "TheFlutterWay",
                color: Color(0xFFE4FFC7),),
              SocalCard(
                iconSrc: "assets/images/messanger.png",
                name: "TheFlutterWay",
                color: Color(0xFFE8F0F9),),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2,),
          ContactForm(),
        ],
      ),
    );
  }

}

class ContactForm extends StatelessWidget{
  const ContactForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Wrap(
          spacing: kDefaultPadding * 2.5,
          runSpacing: kDefaultPadding * 1.5,
          children: [
            SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value){},
                decoration: const InputDecoration(
                  labelText: "Your Name",
                  hintText: "Enter Your Name",
                ),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value){},
                decoration: const InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter your email address",
                ),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value){},
                decoration: const InputDecoration(
                  labelText: "Project Type",
                  hintText: "Select Project Type",
                ),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                onChanged: (value){},
                decoration: const InputDecoration(
                  labelText: "Project Budget",
                  hintText: "Select Project Budget",
                ),
              ),
            ),
            TextFormField(
              onChanged: (value){},
              decoration: const InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
            SizedBox(height: kDefaultPadding * 2,),
            Center(
              child: FittedBox(
                child: DefaultButton(
                  imageSrc: "assets/images/contact_icon.png",
                  key: UniqueKey(),
                  text: 'Contact Me!',
                  press: (){},
                ),
              ),
            )
          ],
        ));
  }
}
