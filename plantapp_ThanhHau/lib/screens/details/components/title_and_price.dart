import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key, required this.title, required this.country, required this.price,
  });

final String title, country;
final int price;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  // ignore: deprecated_member_use
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: kTextColor, fontWeight: FontWeight.bold
                  ),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,                      )
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Spacer(),
          Text(
            "\$$price", 
            style: Theme.of(context)
              .textTheme
              // ignore: deprecated_member_use
              .headline5?.copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
