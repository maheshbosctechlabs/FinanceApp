import 'package:financeapp/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  final int index;
  CardWidget({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index == 0)
      return Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Container(
          height: 175,
          width: MediaQuery.of(context).size.width - 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorConstants.korangeColor,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.credit_card,
                      color: ColorConstants.kwhiteColor,
                    ),
                    onPressed: () {},
                    tooltip: 'KYC',
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, top: 25, bottom: 10, right: 20),
                    child: Text(
                      'VISA',
                      style: GoogleFonts.spartan(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 10,
                      bottom: 15,
                    ),
                    child: Text(
                      '4562 1122 4595 7852',
                      style: GoogleFonts.spartan(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 25,
                                bottom: 10,
                                right: 20,
                              ),
                              child: Text(
                                'CARD HOLDER',
                                style: GoogleFonts.spartan(
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstants.kwhiteColor,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 0,
                                bottom: 10,
                                right: 20,
                              ),
                              child: Text(
                                'Ghulam',
                                style: GoogleFonts.spartan(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstants.kwhiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 25,
                                bottom: 10,
                                right: 20,
                              ),
                              child: Text(
                                'Expiry Date',
                                style: GoogleFonts.spartan(
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstants.kwhiteColor,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 0,
                                bottom: 10,
                                right: 20,
                              ),
                              child: Text(
                                '24/2020',
                                style: GoogleFonts.spartan(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstants.kwhiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    if (index == 1)
      return Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 15,
        ),
        child: Container(
          height: 175,
          width: MediaQuery.of(context).size.width - 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  ColorConstants.cblackColor,
                  ColorConstants.corangeColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.centerRight,
              )),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.credit_card,
                      color: ColorConstants.kwhiteColor,
                    ),
                    onPressed: () {},
                    tooltip: 'KYC',
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 25,
                      bottom: 10,
                      right: 20,
                    ),
                    child: Text(
                      'VISA',
                      style: GoogleFonts.spartan(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 10,
                      bottom: 15,
                    ),
                    child: Text(
                      '4562 1122 4595 7852',
                      style: GoogleFonts.spartan(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, top: 25, bottom: 10, right: 20),
                              child: Text(
                                'CARD HOLDER',
                                style: GoogleFonts.spartan(
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstants.kwhiteColor,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, top: 0, bottom: 10, right: 20),
                              child: Text(
                                'Ghulam',
                                style: GoogleFonts.spartan(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstants.kwhiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, top: 25, bottom: 10, right: 20),
                              child: Text(
                                'Expiry Date',
                                style: GoogleFonts.spartan(
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstants.kwhiteColor,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, top: 0, bottom: 10, right: 20),
                              child: Text(
                                '24/2020',
                                style: GoogleFonts.spartan(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstants.kwhiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
