// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, sized_box_for_whitespace, unnecessary_import

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class HondaUI extends StatefulWidget {
  const HondaUI({super.key});

  @override
  State<HondaUI> createState() => _HondaUIState();
}

class _HondaUIState extends State<HondaUI> {
  //สร้างตัวแปรเก็บรูปที่ใช้กับ ListView รถเก๋ง
  List<String> _sedan = [
    'https://www.honda.ca/-/media/Brands/Honda/Models/CIVIC-SEDAN/2023/Overview/03_Key-Features/Honda_Civic_key-features_desktop_1036x520.png?h=520&iar=0&w=1036&rev=b9ff705973af4776943d63f64055a329&hash=631C8CFA6C956A69634BC36913296FE7',
    'https://www.honda.ca/-/media/Brands/Honda/Models/CIVIC-SEDAN/2023/Overview/03_Key-Features/Honda_Civic_key-features_desktop_1036x520.png?h=520&iar=0&w=1036&rev=b9ff705973af4776943d63f64055a329&hash=631C8CFA6C956A69634BC36913296FE7',
    'https://www.honda.ca/-/media/Brands/Honda/Models/CIVIC-SEDAN/2023/Overview/03_Key-Features/Honda_Civic_key-features_desktop_1036x520.png?h=520&iar=0&w=1036&rev=b9ff705973af4776943d63f64055a329&hash=631C8CFA6C956A69634BC36913296FE7',
    'https://www.honda.ca/-/media/Brands/Honda/Models/CIVIC-SEDAN/2023/Overview/03_Key-Features/Honda_Civic_key-features_desktop_1036x520.png?h=520&iar=0&w=1036&rev=b9ff705973af4776943d63f64055a329&hash=631C8CFA6C956A69634BC36913296FE7',
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
    'https://di-uploads-pod14.dealerinspire.com/hondaeastcincy/uploads/2023/12/2312-Pilot-SUV-Lineup-Comp.webp',
    'https://di-uploads-pod14.dealerinspire.com/hondaeastcincy/uploads/2023/12/2312-Pilot-SUV-Lineup-Comp.webp',
    'https://di-uploads-pod14.dealerinspire.com/hondaeastcincy/uploads/2023/12/2312-Pilot-SUV-Lineup-Comp.webp',
    'https://di-uploads-pod14.dealerinspire.com/hondaeastcincy/uploads/2023/12/2312-Pilot-SUV-Lineup-Comp.webp',
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
    'https://www.cars.com/i/large/in/v2/stock_photos/c8e2e012-238c-4f91-af01-d30de378beca/eda2be70-faf8-464c-acac-276dd17c6e32.png',
    'https://www.cars.com/i/large/in/v2/stock_photos/c8e2e012-238c-4f91-af01-d30de378beca/eda2be70-faf8-464c-acac-276dd17c6e32.png',
    'https://www.cars.com/i/large/in/v2/stock_photos/c8e2e012-238c-4f91-af01-d30de378beca/eda2be70-faf8-464c-acac-276dd17c6e32.png',
    'https://www.cars.com/i/large/in/v2/stock_photos/c8e2e012-238c-4f91-af01-d30de378beca/eda2be70-faf8-464c-acac-276dd17c6e32.png',
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
    'https://www.car250.com/wp-content/uploads/2021/01/All-New-Odyssey-2021-1.jpg',
    'https://www.car250.com/wp-content/uploads/2021/01/All-New-Odyssey-2021-1.jpg',
    'https://www.car250.com/wp-content/uploads/2021/01/All-New-Odyssey-2021-1.jpg',
    'https://www.car250.com/wp-content/uploads/2021/01/All-New-Odyssey-2021-1.jpg',
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
            'HONDA',
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
