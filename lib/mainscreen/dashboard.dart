import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartpredi/utility/components/body.dart';
import 'package:smartpredi/utility/my_bottom_nav_bar.dart';

class secdash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
