import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smartpredi/utility/components/name_style.dart';
import '../../utility/constants.dart';
import 'image_style.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Positioned(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 10, left: 15, right: 16, bottom: 1),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "Hello, user1",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),


          ImageAndIcons(size: size),
          Appname(title: "SmartPredict", subname : " Innovative crop wastage reduction system" ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: Colors.brown,
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Tour"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
