// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, sized_box_for_whitespace, unnecessary_import

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class ToyotaUI extends StatefulWidget {
  const ToyotaUI({super.key});

  @override
  State<ToyotaUI> createState() => _ToyotaUIState();
}

class _ToyotaUIState extends State<ToyotaUI> {
  //สร้างตัวแปรเก็บรูปที่ใช้กับ ListView รถเก๋ง
  List<String> _sedan = [
    'https://s.isanook.com/au/0/ud/16/83883/yaris_60_years_04.jpg?ip/crop/w670h402/q80/jpg',
    'https://s.isanook.com/au/0/ud/16/83883/yaris_60_years_04.jpg?ip/crop/w670h402/q80/jpg',
    'https://s.isanook.com/au/0/ud/16/83883/yaris_60_years_04.jpg?ip/crop/w670h402/q80/jpg',
    'https://s.isanook.com/au/0/ud/16/83883/yaris_60_years_04.jpg?ip/crop/w670h402/q80/jpg',
  ];

//สร้างตัวแปรเก็บรูปที่ใช้กับ ListView ราคารถเก๋ง
  List<String> _sedanDes = [
    'Yaris ATIV\n1,000,000 บาท',
    'Yaris\n1,000,000 บาท',
    'Corolla Altis\n1,000,000 บาท',
    'Corolla\n1,000,000 บาท',
  ];

  //SUV&PPV
  List<String> _suvppv = [
    'https://cf.autodeft2.pw/uploads/images/2020/Press%20Event/Toyota/All-New%20Toyota%20Corolla%20CROSS%C2%A0/TMTNews-1.jpg',
    'https://cf.autodeft2.pw/uploads/images/2020/Press%20Event/Toyota/All-New%20Toyota%20Corolla%20CROSS%C2%A0/TMTNews-1.jpg',
    'https://cf.autodeft2.pw/uploads/images/2020/Press%20Event/Toyota/All-New%20Toyota%20Corolla%20CROSS%C2%A0/TMTNews-1.jpg',
    'https://cf.autodeft2.pw/uploads/images/2020/Press%20Event/Toyota/All-New%20Toyota%20Corolla%20CROSS%C2%A0/TMTNews-1.jpg',
  ];

  //ราคา SUV&PPV
  List<String> _suvppvDes = [
    'Yaris Cross\n1,000,000 บาท',
    'New Corolla Cross\n1,000,000 บาท',
    'Fortuner Leader\n1,000,000 บาท',
    'Fortuner\n1,000,000 บาท',
  ];

  //กระบะ
  List<String> _truck = [
    'https://toyotarich.com/wp-content/uploads/2024/03/Hilux-Revo-Prerunner-4x4-Dark-Grey-Metallic.jpg',
    'https://toyotarich.com/wp-content/uploads/2024/03/Hilux-Revo-Prerunner-4x4-Dark-Grey-Metallic.jpg',
    'https://toyotarich.com/wp-content/uploads/2024/03/Hilux-Revo-Prerunner-4x4-Dark-Grey-Metallic.jpg',
    'https://toyotarich.com/wp-content/uploads/2024/03/Hilux-Revo-Prerunner-4x4-Dark-Grey-Metallic.jpg',
  ];

  //ราคา กระบะ
  List<String> _truckDes = [
    'Hilux Champ\n1,000,000 บาท',
    'Hilux Revo Cross\n1,000,000 บาท',
    'Hilux Revo Rocco\n1,000,000 บาท',
    'Hilux Revo Rocco AT\n1,000,000 บาท',
  ];

  //รถตู้
  List<String> _van = [
    'https://itp1.itopfile.com/ImageServer/z_itp_21042021jnto/0/0/1z-z130423323722.webp',
    'https://itp1.itopfile.com/ImageServer/z_itp_21042021jnto/0/0/1z-z130423323722.webp',
    'https://itp1.itopfile.com/ImageServer/z_itp_21042021jnto/0/0/1z-z130423323722.webp',
    'https://itp1.itopfile.com/ImageServer/z_itp_21042021jnto/0/0/1z-z130423323722.webp',
  ];

  //ราคา รถตู้
  List<String> _vanDes = [
    'Hiace\n1,000,000 บาท',
    'Hiace GL\n1,000,000 บาท',
    'Hiace Panel\n1,000,000 บาท',
    'Commuter\n1,000,000 บาท',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            'TOYOTA',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'รถเก๋ง',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _sedan.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          children: [
                            Image.network(
                              _sedan[index],
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            Text(
                              _sedanDes[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.027),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Text(
                'SUV & PPV',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _suvppv.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          children: [
                            Image.network(
                              _suvppv[index],
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            Text(
                              _suvppvDes[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.027),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Text(
                'รถกระบะ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _truck.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          children: [
                            Image.network(
                              _truck[index],
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            Text(
                              _truckDes[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.027),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Text(
                'รถ Van',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _van.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          children: [
                            Image.network(
                              _van[index],
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                            Text(
                              _vanDes[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.027),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
