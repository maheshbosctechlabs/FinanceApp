import 'package:financeapp/common/color_constants.dart';
import 'package:financeapp/common/current_screen_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kblackColor,
      bottomNavigationBar: _buildBottomNavigationBarPortrait(),
      body: CurrentScreenIndex(selectedOptionIndex),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  Widget _buildBottomNavigationBarPortrait() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.commentDots),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.person,
          ),
          title: Text(''),
        ),
      ],
      currentIndex: selectedOptionIndex,
      onTap: _onItemTapped,
      backgroundColor: ColorConstants.kblackColor,
      selectedItemColor: ColorConstants.korangeColor,
      unselectedItemColor: ColorConstants.kwhiteColor,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }
}
