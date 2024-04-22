// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, sized_box_for_whitespace, unnecessary_import

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class MazdaUI extends StatefulWidget {
  const MazdaUI({super.key});

  @override
  State<MazdaUI> createState() => _MazdaUIState();
}

class _MazdaUIState extends State<MazdaUI> {
  //สร้างตัวแปรเก็บรูปที่ใช้กับ ListView รถเก๋ง
  List<String> _sedan = [
    'https://www.mazdausa.com/siteassets/vehicles/2024/mazda3-sedan/build-and-price/trims/ext.-360s/2.5/black/e360-my22-mazda3-sedan-fwd-2-5s-jetblackmica-004.jpg',
    'https://www.mazdausa.com/siteassets/vehicles/2024/mazda3-sedan/build-and-price/trims/ext.-360s/2.5/black/e360-my22-mazda3-sedan-fwd-2-5s-jetblackmica-004.jpg',
    'https://www.mazdausa.com/siteassets/vehicles/2024/mazda3-sedan/build-and-price/trims/ext.-360s/2.5/black/e360-my22-mazda3-sedan-fwd-2-5s-jetblackmica-004.jpg',
    'https://www.mazdausa.com/siteassets/vehicles/2024/mazda3-sedan/build-and-price/trims/ext.-360s/2.5/black/e360-my22-mazda3-sedan-fwd-2-5s-jetblackmica-004.jpg',
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
    'https://assets.brandinside.asia/uploads/2018/06/mazda.jpg',
    'https://assets.brandinside.asia/uploads/2018/06/mazda.jpg',
    'https://assets.brandinside.asia/uploads/2018/06/mazda.jpg',
    'https://assets.brandinside.asia/uploads/2018/06/mazda.jpg',
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
    'https://www.mazda.co.th/link/c9e095b6377e4fee84e78e693e122a51.aspx',
    'https://www.mazda.co.th/link/c9e095b6377e4fee84e78e693e122a51.aspx',
    'https://www.mazda.co.th/link/c9e095b6377e4fee84e78e693e122a51.aspx',
    'https://www.mazda.co.th/link/c9e095b6377e4fee84e78e693e122a51.aspx',
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
    'https://s.isanook.com/au/0/ud/14/70055/312.jpg?ip/crop/w670h402/q80/jpg',
    'https://s.isanook.com/au/0/ud/14/70055/312.jpg?ip/crop/w670h402/q80/jpg',
    'https://s.isanook.com/au/0/ud/14/70055/312.jpg?ip/crop/w670h402/q80/jpg',
    'https://s.isanook.com/au/0/ud/14/70055/312.jpg?ip/crop/w670h402/q80/jpg',
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
            'MAZDA',
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
