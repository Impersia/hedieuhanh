import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

import 'image_and_icon.dart';
import 'title_and_price.dart';


// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          // ignore: prefer_const_constructors
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    foregroundColor: kBackgroundColor,
                    
                  ),
                  onPressed: (){},
                  child: const Text(
                    "Buy Now",
                  ),
                  ),
              ),
              Expanded(
                child: TextButton(

                  onPressed: (){},
                  child: const Text("Description"),
                )
              )
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}




