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
                            title: 'Xác nhận thông tin',
                            subtitle:
                                'Vui lòng kiểm tra thông tin thiết bị và thông tin công ty.'),

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
