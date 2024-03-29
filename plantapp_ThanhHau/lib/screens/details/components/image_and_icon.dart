import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/constants.dart';

import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    double imageContainerHeight;
    double imageContainerWidth;

    if (orientation == Orientation.portrait) {
      imageContainerHeight = size.height * 0.8;
      imageContainerWidth = size.width * 0.75;
    } else {
      imageContainerHeight = size.height * 2.5;
      imageContainerWidth = size.width * 0.75;
    }
    
    return Padding(
      
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        
        height: orientation == Orientation.portrait ? size.height * 0.85 : size.width * 1.5,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Spacer(),
                    const IconsCard(icon: "assets/icons/sun.svg"),
                    const IconsCard(icon: "assets/icons/icon_2.svg"),
                    const IconsCard(icon: "assets/icons/icon_3.svg"),
                    const IconsCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: imageContainerHeight,
              width: imageContainerWidth,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}