import 'package:flutter/material.dart';
import 'package:flutter_medicalibre_app/main.dart';
import 'package:flutter_medicalibre_app/src/pages/home_page.dart';
import 'package:flutter_medicalibre_app/src/theme/light_color.dart';
import 'package:flutter_medicalibre_app/src/theme/text_styles.dart';
import 'package:flutter_medicalibre_app/src/theme/extention.dart';
import 'package:flutter_medicalibre_app/src/pages/login.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
     Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/doctor_face.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .10,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [LightColor.purpleExtraLight, LightColor.purple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
         Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                //Image.asset("assets/heartbeat.png", color: Colors.white,height: 100,),
                Text(
                  "MediCalibre",
                  style: TextStyles.h1Style.bold,
                ),
                Text(
                  "By Haseebism",
                  style: TextStyles.bodySm.white.bold,
                ),
                Expanded(
                  flex: 7,
                  child: SizedBox(),
                ),
              ],
            ).alignTopCenter,
        ],
      ),
    );
  }
}
