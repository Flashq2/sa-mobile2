import 'package:flutter/material.dart';
import 'package:flutter_02/widgetsclass/app_colors.dart';
import 'package:flutter_02/widgetsclass/app_font.dart';

class TextBoxInit extends StatelessWidget {
  var labelTitle = "";
  var placeholderTitle = "";
  Icon subfixIcon;
  TextBoxInit(
      {super.key,
      required this.labelTitle,
      required this.placeholderTitle,
      required this.subfixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Email address",
            style:
                appText(15, appColors.subDefaultFontColors, FontWeight.normal),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(width: 1, color: appColors.subDefaultFontColors),
            ),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: subfixIcon,
                  border: InputBorder.none,
                  hintText: placeholderTitle,
                  hintStyle: appText(13, appColors.subDefaultFontColorsOpcity,
                      FontWeight.normal)),
            ),
          ),
        ]);
  }
}
