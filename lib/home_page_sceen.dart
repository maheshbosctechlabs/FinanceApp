import 'package:bezier_chart/bezier_chart.dart';
import 'package:financeapp/common/color_constants.dart';
import 'package:financeapp/common/constants.dart';
import 'package:financeapp/custom_widgets/graph_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final numberFormat = new NumberFormat("##,###.00#", "en_US");
  Color color = ColorConstants.gblackColor;
  Color fcolor = ColorConstants.kgreyColor;
  bool isActive = false;
  int activeIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kblackColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.short_text,
                    color: ColorConstants.kwhiteColor,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: ColorConstants.kwhiteColor,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Your Balance",
                style: GoogleFonts.spartan(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.kwhiteColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Money Received",
                style: GoogleFonts.spartan(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.kgreyColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    r'$' + "${numberFormat.format(27802.05)}",
                    style: GoogleFonts.openSans(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.kwhiteColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "15%",
                        style: GoogleFonts.spartan(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.kwhiteColor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_upward,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  child: BezierChart(
                    bezierChartScale: BezierChartScale.CUSTOM,
                    selectedValue: 1,
                    xAxisCustomValues: [1, 5, 10, 15, 20, 25, 30],
                    series: const [
                      BezierLine(
                        label: "june",
                        lineColor: ColorConstants.korangeColor,
                        dataPointStrokeColor: ColorConstants.kwhiteColor,
                        dataPointFillColor: ColorConstants.korangeColor,
                        lineStrokeWidth: 3,
                        data: const [
                          DataPoint<double>(value: 100, xAxis: 1),
                          DataPoint<double>(value: 130, xAxis: 5),
                          DataPoint<double>(value: 300, xAxis: 10),
                          DataPoint<double>(value: 150, xAxis: 15),
                          DataPoint<double>(value: 75, xAxis: 20),
                          DataPoint<double>(value: 100, xAxis: 25),
                          DataPoint<double>(value: 250, xAxis: 30),
                        ],
                      ),
                    ],
                    config: BezierChartConfig(
                      startYAxisFromNonZeroValue: true,
                      verticalIndicatorFixedPosition: false,
                      bubbleIndicatorColor: ColorConstants.gblackColor,
                      bubbleIndicatorLabelStyle:
                          TextStyle(color: ColorConstants.kwhiteColor),
                      bubbleIndicatorTitleStyle:
                          TextStyle(color: ColorConstants.kwhiteColor),
                      bubbleIndicatorValueStyle:
                          TextStyle(color: ColorConstants.kwhiteColor),
                      footerHeight: 40,
                      displayYAxis: false,
                      stepsYAxis: 15,
                      displayLinesXAxis: false,
                      xAxisTextStyle: TextStyle(
                        color: ColorConstants.kblackColor,
                      ),
                      backgroundGradient: LinearGradient(
                        colors: [
                          ColorConstants.kblackColor,
                          ColorConstants.kblackColor,
                          ColorConstants.kblackColor,
                          ColorConstants.kblackColor
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      snap: false,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: ColorConstants.korangeColor,
                    ),
                    child: Center(
                      child: Text(
                        "Apr to Jun",
                        style: GoogleFonts.spartan(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.kwhiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GraphCardWidget(
                    title: Constants.strList[0],
                    activeColor: color,
                    fontColor: fcolor,
                    isActive: isActive,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GraphCardWidget(
                    title: Constants.strList[1],
                    activeColor: color,
                    fontColor: fcolor,
                    isActive: isActive,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GraphCardWidget(
                    title: Constants.strList[2],
                    activeColor: color,
                    fontColor: fcolor,
                    isActive: isActive,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Income",
                    style: GoogleFonts.spartan(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.kgreyColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "75%",
                        style: GoogleFonts.spartan(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.kgreyColor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_downward,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Outcome",
                    style: GoogleFonts.spartan(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.kgreyColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "25%",
                        style: GoogleFonts.spartan(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.kgreyColor,
                        ),
                      ),
                      Icon(
                        Icons.arrow_upward,
                        color: ColorConstants.kwhiteColor,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
