import 'package:financeapp/common/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Constants {
  static List<Icon> iconList = [
    Icon(
      Icons.mail_outline,
      color: ColorConstants.kwhiteColor,
    ),
    Icon(
      FontAwesomeIcons.paypal,
      color: ColorConstants.kwhiteColor,
    ),
    Icon(
      CupertinoIcons.settings,
      color: ColorConstants.kwhiteColor,
    ),
  ];

  static List<String> titleList = [
    "Salary",
    "Paypal",
    "Car Repair",
  ];

  static List<String> subtitleList = [
    "Belong Interactive",
    "Webtech",
    "Car Engine repair",
  ];

  static List<int> amountList = [
    2010,
    12010,
    232010,
  ];

  static List<String> strList = [
    "1 \n Month",
    "6 \n Month",
    "1 \n Year",
  ];
}
