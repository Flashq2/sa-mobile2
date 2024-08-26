import 'package:flutter/material.dart';
import 'package:flutter_02/widgets/text_box.dart';
import 'package:flutter_02/widgetsclass/app_colors.dart';
import 'package:flutter_02/widgetsclass/app_font.dart';

class Resiger extends StatefulWidget {
  const Resiger({super.key});

  @override
  State<Resiger> createState() => _ResigerState();
}

class _ResigerState extends State<Resiger> {
  var listBox = [
    {
      "labelTitle": "Email address",
      "placeholder": "Enter Email address",
      "subfixIcon": Icons.email,
    },
    {
      "labelTitle": "Email Name",
      "placeholder": "Enter Your name",
      "subfixIcon": Icons.usb_rounded,
    },
    {
      "labelTitle": "Phone Number",
      "placeholder": "Enter Phone Number",
      "subfixIcon": Icons.phone,
    },
    {
      "labelTitle": "Password",
      "placeholder": "Enter Password",
      "subfixIcon": Icons.hide_image,
    },
  ];

  final List<ListItem> _items = [
    ListItem(
        labelTitle: "Email address",
        placeholder: "Enter Email address",
        subfixIcon: Icons.email),
    ListItem(
        labelTitle: "Email Name",
        placeholder: "Enter Your name",
        subfixIcon: Icons.admin_panel_settings),
    ListItem(
        labelTitle: "Phone Number",
        placeholder: "Enter Phone Number",
        subfixIcon: Icons.phone),
    ListItem(
        labelTitle: "Password",
        placeholder: "Enter Password",
        subfixIcon: Icons.hide_image),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Register your account",
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < _items.length; i++) ...[
                      SizedBox(
                        height: 10,
                      ),
                      TextBoxInit(
                          labelTitle: _items[i].labelTitle.toString(),
                          placeholderTitle: _items[i].placeholder.toString(),
                          subfixIcon: Icon(
                            _items[i].subfixIcon,
                            color: appColors.subDefaultFontColorsOpcity,
                          ))
                    ],
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: appColors.defaultButtonColor),
                        child: Center(
                          child: Text(
                            "Register",
                            style: appText(16, appColors.defaultTestColors,
                                FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don yor have an account?",
                                style: appText(
                                    13,
                                    appColors.subDefaultFontColorsOpcity,
                                    FontWeight.normal),
                              ),
                              Text(
                                " Login",
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

class ListItem {
  String labelTitle = "";
  String placeholder;
  IconData subfixIcon;
  ListItem({
    required this.labelTitle,
    required this.placeholder,
    required this.subfixIcon,
  });
}
