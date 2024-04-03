// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mukrata_sau_app/views/about_ui.dart';
import 'package:mukrata_sau_app/views/caiculate_pay_bill_ui.dart';
import 'package:mukrata_sau_app/views/menu_shop_ui.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  //สร้างตัวแปรเก็บหน้าจอ
  List<Widget> _showUI = [
    CalculatePayBillUI(),
    AboutUI(),
    MenuShopUI(),
  ];
  //สร้างตัวแปนกำหนดหน้าจอ
  int _currentShowUI = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Tech SAU BUFFET',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap: (value) {
          setState(() {
            _currentShowUI = value;
          });
        },
        initialActiveIndex: _currentShowUI,
        backgroundColor: Colors.deepOrange,
        items: [
          TabItem(
            icon: Icon(
              FontAwesomeIcons.moneyBill1,
              color: Colors.pink,
            ),
            title: 'คิดเงิน',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: Colors.pink
            ),
            title: 'Home',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.star,
              color: Colors.pink,
            ),
            title: 'เกี่ยวกับ',
          ),
        ],
      ),
      body: _showUI[_currentShowUI],
    );
  }
}
