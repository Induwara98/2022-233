import 'package:flutter/material.dart';
import 'dart:async';
import 'package:smartpredi/mainscreen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    _mockCheckForSession().then(
            (status) {
          _navigateToLogin();
        });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});
    return true;
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => Login()
        )
    );}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Opacity(
                opacity: 1,
                child: Image.asset('assets/background.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,)
            ),
          ],
        ),
      ),
    );
  }


}