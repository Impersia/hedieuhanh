import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/home/components/recomend_plant.dart';
import 'featured_plant.dart';
import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: (){},
          ),
          const RecomendsPlant(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: (){}
          ),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding,),
        ],),
    );
  }
}






