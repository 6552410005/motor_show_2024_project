// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:motor_show_2024_project/views/calculate_ui.dart';
import 'package:motor_show_2024_project/views/honda_ui.dart';
import 'package:motor_show_2024_project/views/mazda_ui.dart';
import 'package:motor_show_2024_project/views/mitsubishi_ui.dart';
import 'package:motor_show_2024_project/views/toyota_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<Widget> _showView = [
    ToyotaUI(),
    HondaUI(),
    CalculateUI(),
    MitsubishiUI(),
    MazdaUI(),
  ];
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        //Body
        body: _showView[_currentIndex],
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.amber,
          activeColor: Colors.white,
          //style: TabStyle.react,
          initialActiveIndex: 2,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            TabItem(
              icon: Image.network(
                'https://cdn.icon-icons.com/icons2/1834/PNG/512/iconfindertoyotalogo4141639-115964_115917.png',
                alignment: Alignment.center,
                scale: MediaQuery.of(context).size.height*0.011,
              ),
            ),
            TabItem(
              icon: Image.network(
                'https://www.autowheel.co.th/wp-content/uploads/2019/08/Honda-logo.png',
                alignment: Alignment.center,
                scale: MediaQuery.of(context).size.height*0.05,
              ),
            ),TabItem(
              icon: Image.asset(
                'assets/images/calculator.png',
                alignment: Alignment.center,
                scale: MediaQuery.of(context).size.height*0.011,
              ),
            ),TabItem(
              icon: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Mitsubishi_motors_new_logo.svg/1200px-Mitsubishi_motors_new_logo.svg.png',
                alignment: Alignment.center,
                scale: MediaQuery.of(context).size.height*0.03,
              ),
            ),TabItem(
              icon: Image.network(
                'https://www.mazda.co.th/globalassets/logos/brand_mark_primary_vertical2.png',
                alignment: Alignment.center,
                scale: MediaQuery.of(context).size.height*0.0045,
              ),
            ),
          ],
        ));
  }
}
