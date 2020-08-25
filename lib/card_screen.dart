import 'package:financeapp/common/color_constants.dart';
import 'package:financeapp/common/constants.dart';
import 'package:financeapp/custom_widgets/card_widget.dart';
import 'package:financeapp/custom_widgets/transaction_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 35,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: ColorConstants.kwhiteColor,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: ColorConstants.kwhiteColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Your Cards',
                  style: GoogleFonts.spartan(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.kwhiteColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'You have 3 Active Cards',
                  style: GoogleFonts.spartan(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.kgreyColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 3,
              right: 15,
              top: 30,
            ),
            child: Container(
              height: 175,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return CardWidget(
                    index: index,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recent Transactions",
                  style: GoogleFonts.spartan(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.kwhiteColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(
                    Constants.titleList.length,
                    (index) {
                      return TransactionListWidget(
                        icon: Constants.iconList[index],
                        titleTxt: Constants.titleList[index],
                        subtitleTxt: Constants.subtitleList[index],
                        amount: Constants.amountList[index],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
