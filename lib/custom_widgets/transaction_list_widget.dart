import 'package:financeapp/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TransactionListWidget extends StatelessWidget {
  final String titleTxt, subtitleTxt;
  final int amount;
  final Icon icon;
  TransactionListWidget({
    Key key,
    @required this.icon,
    @required this.titleTxt,
    @required this.subtitleTxt,
    @required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numberFormat = new NumberFormat("##,###", "en_US");
    return Column(
      children: [
        Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: ColorConstants.gblackColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: ColorConstants.korangeColor,
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Center(
                        child: icon,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          titleTxt,
                          style: GoogleFonts.spartan(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: ColorConstants.kwhiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          subtitleTxt,
                          style: GoogleFonts.spartan(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.kgreyColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  '+' + r'$' + "${numberFormat.format(amount)}",
                  style: GoogleFonts.openSans(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.kwhiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
