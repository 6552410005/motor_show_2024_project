// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_project/views/home_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.orange[100],
      body: IntroductionScreen(
        autoScrollDuration: 10000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              'TOYOTA',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.height * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            image: Image.network(
              'https://img.pptvhd36.com/thumbor/2023/11/15/news-aed020c.jpg',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            bodyWidget: Column(
              children: [
                Text(
                  'CAMRY',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.030,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis tempor felis, sit amet tincidunt augue blandit quis. Curabitur quis est suscipit metus tempor fringilla. Curabitur sed mauris venenatis, luctus.',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'MITSUBISHI',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.height * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            image: Image.network(
              'https://www.grandprix.co.th/wp-content/uploads/2022/01/New-Pajero-Sports.jpg',
              width: MediaQuery.of(context).size.width * 0.72,
            ),
            bodyWidget: Column(
              children: [
                Text(
                  'PAJERO',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.030,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis tempor felis, sit amet tincidunt augue blandit quis. Curabitur quis est suscipit metus tempor fringilla. Curabitur sed mauris venenatis, luctus.',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'HONDA',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.height * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            image: Image.network(
              'https://media.ed.edmunds-media.com/honda/accord/2023/oem/2023_honda_accord_sedan_sport-l-hybrid_fq_oem_1_1600.jpg',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            bodyWidget: Column(
              children: [
                Text(
                  'ACCORD',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.030,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis tempor felis, sit amet tincidunt augue blandit quis. Curabitur quis est suscipit metus tempor fringilla. Curabitur sed mauris venenatis, luctus.',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'MAZDA',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.height * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            image: Image.network(
              'https://mpics.mgronline.com/pics/Images/564000010279001.JPEG',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            bodyWidget: Column(
              children: [
                Text(
                  'CX5',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.030,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam venenatis tempor felis, sit amet tincidunt augue blandit quis. Curabitur quis est suscipit metus tempor fringilla. Curabitur sed mauris venenatis, luctus.',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
          style: GoogleFonts.itim(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(
            MediaQuery.of(context).size.width * 0.025,
            MediaQuery.of(context).size.height * 0.025,
          ),
          color: Colors.grey,
          activeSize: Size(
            MediaQuery.of(context).size.width * 0.055,
            MediaQuery.of(context).size.height * 0.025,
          ),
          activeColor: Colors.orange,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Colors.orange,
        ),
        nextFlex: 0,
        done: Text(
          'เริ่มต้น',
          style: GoogleFonts.itim(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
      ),
    );
  }
}
