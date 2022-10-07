import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utility/constants.dart';
import 'icon_utility.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 0.1),
      child: SizedBox(
        height: size.height * 0.7,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 1),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    IconCard(icon: "assets/icon/plant.svg"),
                    IconCard(icon: "assets/icon/weather.svg"),
                    IconCard(icon: "assets/icon/fertilizer.svg"),
                    IconCard(icon: "assets/icon/profit.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.55,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/sideimg.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
