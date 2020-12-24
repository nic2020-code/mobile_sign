import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:myApp/constants.dart';
import 'OTP_auth.dart';
import 'package:device_info/device_info.dart';

class DigitalCertificate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CertificateState();
  }
}

enum SingingCharacter { digitalcertificate }

class _CertificateState extends State<DigitalCertificate> {
  SingingCharacter _character = SingingCharacter.digitalcertificate;
  DeviceInfoPlugin deviceInfo =
      DeviceInfoPlugin(); // instantiate device info plugin
  AndroidDeviceInfo androidDeviceInfo;
  IosDeviceInfo iosDeviceInfo;
  String model, id;

  @override
  void initState() {
    super.initState();
    getDeviceinfo();
  }

  void getDeviceinfo() async {
    androidDeviceInfo = await deviceInfo.androidInfo;
    // iosDeviceInfo = await deviceInfo.iosInfo;
    setState(() {
      if (Platform.isAndroid) {
        model = androidDeviceInfo.model;
        id = androidDeviceInfo.androidId;
      } else if (Platform.isIOS) {
        //     model = iosDeviceInfo.name;
        //     id = iosDeviceInfo.identifierForVendor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Certificate',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(244, 244, 245, 1),
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 40),
          child: Container(
            child: Column(
              children: [
                //Appbar
                appBar(context, 0.5),
                SizedBox(height: 38),

                //Screen Title
                Flexible(
                    child: Container(
                  padding: containerPadding,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingTitle(
                            title: 'Xác nhận chứng thư',
                            subtitle:
                                'Vui lòng xác thực serial để kết nối và kích hoạt thiết bị với ứng dụng'),

                        //Infomation of digital certificate
                        titleCard(titleOfCard: 'Thiết bị'),
                        SizedBox(height: 2),
                        Container(
                          width: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                firstContent(firstCard: '$model'),
                                secondContent(secondContent: '$id')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 28),
                        titleCard(titleOfCard: 'Thông tin công ty'),
                        SizedBox(height: 2),
                        Container(
                          width: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                firstContent(
                                    firstCard:
                                        'Công Ty Thương Mại Cổ Phần Công Nghệ Thẻ Nacencomm'),
                                secondContent(secondContent: '0103930279')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 28),
                        titleCard(titleOfCard: 'Số serial'),
                        SizedBox(height: 2),
                        Container(
                          width: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 16, left: 16, bottom: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Chọn số serial kích hoạt',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: kPrimaryFontFamily,
                                            color:
                                                Color.fromRGBO(9, 30, 66, 1)),
                                      ),
                                      ListTile(
                                        title: Text(
                                          '000-928',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  37, 110, 189, 1),
                                              fontSize: 14,
                                              fontFamily: kPrimaryFontFamily),
                                        ),
                                        leading: Radio(
                                          value: SingingCharacter
                                              .digitalcertificate,
                                          groupValue: _character,
                                          onChanged: (SingingCharacter value) {
                                            setState(() {
                                              _character = value;
                                            });
                                          },
                                        ),
                                      ),
                                      listOfCertificate(
                                          certificateID: '000-112',
                                          stateOfCertificate: 'Đã kích hoạt'),
                                      listOfCertificate(
                                          certificateID: '000-183',
                                          stateOfCertificate: 'Đã kích hoạt'),
                                      listOfCertificate(
                                          certificateID: '000-165',
                                          stateOfCertificate: 'Đã kích hoạt'),
                                      listOfCertificate(
                                          certificateID: '000-137',
                                          stateOfCertificate: 'Đã kích hoạt'),
                                      listOfCertificate(
                                          certificateID: '000-115',
                                          stateOfCertificate: 'Đã kích hoạt'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),

        //Bottom button
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(30.0),
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OTPAuthentication()),
              );
            },
            child: Text(
              'Kích hoạt'.toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            height: 44,
            textColor: textButtonColor,
            color: buttonColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
