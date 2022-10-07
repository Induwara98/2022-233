import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartpredi/utility/constants.dart';


class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({ Key? key,  }) : super(key: key);  //? add here

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding * 0,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white54,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 10,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icon/profile.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icon/contact.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icon/logout.svg"),
            onPressed: () {
            exit(0);
            },
          ),
        ],
      ),
    );
  }
}
