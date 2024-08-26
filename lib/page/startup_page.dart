import 'package:flutter/material.dart';
import 'package:flutter_02/page/login.dart';
import 'package:flutter_02/widgetsclass/PageRoute.dart';
import 'package:flutter_02/widgetsclass/app_colors.dart';
import 'package:flutter_02/widgetsclass/app_font.dart';

class StartUpPate extends StatefulWidget {
  const StartUpPate({super.key});

  @override
  State<StartUpPate> createState() => _StartUpPateState();
}

class _StartUpPateState extends State<StartUpPate> {
  var text_botton = "Next";
  var currentIndex = 0;
  var image = "public/images/leading_page3.jpg";
  String title = "Let's make your dream vacation";
  String subtitle =
      "It is a long established fact that a reader will be disatacted by readblade content";

  var listIMage = [
    {
      "image": "public/images/leading_page2.jpg",
      "title": "Make on your path to effortless travel",
      "subttitle":
          "It is a long established fact that a reader will be disatacted by readblade content"
    },
    {
      "image": "public/images/leading_page1.jpg",
      "title": "Discover best place for your vacation",
      "subttitle":
          "It is a long established fact that a reader will be disatacted by readblade content"
    },
    {
      "image": "public/images/leading_page3.jpg",
      "title": "Let's make your dream vacation",
      "subttitle":
          "It is a long established fact that a reader will be disatacted by readblade content"
    }
  ];

  void initListStep() {
    setState(() {
      currentIndex += 1;
      if (currentIndex > 2) currentIndex = 0;
      if (currentIndex == 2) {
        text_botton = "Get Started";
      } else {
        text_botton = "Next";
      }
      image = listIMage[currentIndex]['image']!;
      title = listIMage[currentIndex]['title']!;
      subtitle = listIMage[currentIndex]['subttitle']!;
    });
  }

  void gotoLogin() {
    Navigator.of(context).push(createRoutePage(LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.backgrounColors,
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: appColors.backgrounColors),
                height: MediaQuery.sizeOf(context).height * 0.6,
                width: MediaQuery.sizeOf(context).width,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    width: currentIndex == 0 ? 20 : 8,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: appColors.defaultButtonColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    width: currentIndex == 1 ? 20 : 8,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: appColors.defaultButtonColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    width: currentIndex == 2 ? 20 : 8,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: appColors.defaultButtonColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      title,
                      style: appText(
                          30, appColors.defaultTestColors, FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      subtitle,
                      style: appText(14, appColors.subDefaultFontColors,
                          FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: GestureDetector(
              onTap: currentIndex < 2 ? initListStep : gotoLogin,
              child: Container(
                margin: const EdgeInsets.all(20),
                height: 50,
                width: MediaQuery.sizeOf(context).width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: appColors.defaultButtonColor),
                child: Center(
                  child: Text(
                    text_botton,
                    style: appText(
                        16, appColors.defaultTestColors, FontWeight.w500),
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
