// ignore_for_file: prefer_const_constructors

import 'package:demo/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

class VoyanceTelScreen extends StatelessWidget {
  const VoyanceTelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        fit: StackFit.expand,
        children: [
          Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Color(0xff44006b).withOpacity(0.9),
              centerTitle: true,
              title: const Text(
                'Voyance par Téléphone',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Larken-Light',
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: 0.53),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              leading: InkWell(
                  onTap: () {}, child: backButton(context, Colors.white)),
              actions: [
                InkWell(
                    onTap: () {},
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/menu-icon-ifB.png"))),
              ],
            ),
            body: Container(
              width: double.infinity,
              height: 1221 * fem,
              decoration: BoxDecoration(
                color: Color(0xff44006b),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 913 * fem,
                      height: 304 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Container(
                              width: 390 * fem,
                              height: 304.17 * fem,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Color(0xff44006b).withOpacity(0.65),
                                        BlendMode.darken),
                                    image: AssetImage(
                                        "assets/images/voyance-par-tel.png"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 56 * fem,
                            top: 88 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 293 * fem,
                                height: 63 * fem,
                                child: Text(
                                  "Voyance Authentique, immédiate et réelle",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Larken-Light",
                                      fontSize: 24 * ffem,
                                      height: 1.2575 * ffem / fem,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      left: 76 * fem,
                      top: 325 * fem,
                      child: Container(
                        width: 238 * fem,
                        height: 686 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 238 * fem,
                              ),
                              child: Text(
                                "Voyance par téléphone Comment ça marche?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Larken-Light",
                                    fontSize: 24 * ffem,
                                    height: 1.2575 * ffem / fem,
                                    color: Colors.white),
                              ),
                            ),
                            _CircleWidget("search", 1.5, "1"),
                            SizedBox(height: 6),
                            Text(
                              "Je consulte des profils d'experts",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Larken-Light",
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575 * ffem / fem,
                                  color: Colors.white),
                            ),
                            _CircleWidget("hand", 1.5, "2"),
                            SizedBox(height: 6),
                            Text("Je choisis un voyant",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Larken-Light",
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575 * ffem / fem,
                                    color: Colors.white)),
                            _CircleWidget("tel", 1.5, "3"),
                            SizedBox(height: 6),
                            Text(
                              "J'appelle",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Larken-Light",
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575 * ffem / fem,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _CircleWidget(String image, double size, String badge) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 110,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                scale: size,
                image: AssetImage("assets/images/${image}.png"),
                alignment: Alignment.center),
            shape: BoxShape.circle,
            color: Color(
              0xff8c49a3,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 48, top: 2),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xff44016b), width: 2),
                  borderRadius: BorderRadius.circular(76.5),
                ),
                child: Center(
                  child: Text(
                    badge,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Larken-Bold',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff44016b)),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
