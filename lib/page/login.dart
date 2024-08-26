import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_02/page/register.dart';
import 'package:flutter_02/widgetsclass/PageRoute.dart';
import 'package:flutter_02/widgetsclass/app_colors.dart';
import 'package:flutter_02/widgetsclass/app_font.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  var logo = "public/images/logo.png";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  height: 100,
                  child: Image.asset(
                    "public/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "Let's get you Login !",
                  style: appText(
                      24, appColors.subDefaultFontColors, FontWeight.w600),
                ),
                Text(
                  "Enter you infomation below",
                  style: appText(
                      15, appColors.subDefaultFontColors, FontWeight.normal),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.45,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: appColors.subDefaultFontColors)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "public/images/google.png",
                            fit: BoxFit.contain,
                          ),
                          Text(
                            "Google",
                            style: appText(15, appColors.subDefaultFontColors,
                                FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.45,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: appColors.subDefaultFontColors)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "public/images/apple.png",
                            fit: BoxFit.contain,
                          ),
                          Text(
                            "Apple",
                            style: appText(15, appColors.subDefaultFontColors,
                                FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.5)),
                      ),
                    ),
                    Text(
                      " Or Login With ",
                      style: appText(15, appColors.subDefaultFontColors,
                          FontWeight.normal),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.5)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email address",
                      style: appText(15, appColors.subDefaultFontColors,
                          FontWeight.normal),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: appColors.subDefaultFontColors),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.email,
                              color: appColors.subDefaultFontColorsOpcity,
                            ),
                            border: InputBorder.none,
                            hintText: "Enter Email address",
                            hintStyle: appText(
                                13,
                                appColors.subDefaultFontColorsOpcity,
                                FontWeight.normal)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password",
                      style: appText(15, appColors.subDefaultFontColors,
                          FontWeight.normal),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: appColors.subDefaultFontColors),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.password,
                              color: appColors.subDefaultFontColorsOpcity,
                            ),
                            border: InputBorder.none,
                            hintText: "Enter Password",
                            hintStyle: appText(
                                13,
                                appColors.subDefaultFontColorsOpcity,
                                FontWeight.normal)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                              Text(
                                "Remember me",
                                style: appText(
                                    13,
                                    appColors.subDefaultFontColors,
                                    FontWeight.normal),
                              ),
                            ]),
                        Text(
                          "Forget Password?",
                          style: appText(13, appColors.defaultButtonColor,
                              FontWeight.normal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(createRoutePage(const Resiger()));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: appColors.defaultButtonColor),
                        child: Center(
                          child: Text(
                            "Logins",
                            style: appText(16, appColors.defaultTestColors,
                                FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: appText(
                                    13,
                                    appColors.subDefaultFontColorsOpcity,
                                    FontWeight.normal),
                              ),
                              Text(
                                " Resigster",
                                style: appText(13, appColors.defaultButtonColor,
                                    FontWeight.normal),
                              ),
                            ]),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
