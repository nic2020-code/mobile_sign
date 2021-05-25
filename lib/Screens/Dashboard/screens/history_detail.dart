import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';

class HistoryDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined, color: Color.fromRGBO(18, 35, 56, 1)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Yêu cầu ký văn bản",
            style: TextStyle(
                color: Color.fromRGBO(18, 35, 56, 1),
                fontSize: 18
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
              height: 600,
              // padding: EdgeInsets.symmetric(horizontal: 12),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Center(
                      child: UnconstrainedBox(
                        child: LimitedBox(
                          maxWidth: 100,
                          child: Container(
                            height: 74,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/images/edoc_logo.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(208, 215, 226, 1),
                                          width: 1.0
                                      )
                                  )
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 16.0),
                              width: double.infinity,
                              child: Text(
                                '07:05 - 3/12/2020',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color.fromRGBO(107, 119, 140, 1)
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Table(
                                border: TableBorder(horizontalInside: BorderSide(width: 1, color: Color.fromRGBO(245, 245, 245, 1), style: BorderStyle.solid)),
                                columnWidths: {
                                  0: FlexColumnWidth(2),
                                  1: FlexColumnWidth(4),
                                },
                                children: [
                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 16.0),
                                      child: Text(
                                        'Người gửi',
                                        style: TextStyle(
                                            color: Color.fromRGBO(107, 119, 140, 1),
                                            fontSize: 14.0
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 16.0),
                                      child: Text(
                                        'Nguyễn Văn Khanh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(18, 35, 56, 1),
                                            fontSize: 14.0
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 16.0),
                                      child: Text(
                                        'Email',
                                        style: TextStyle(
                                            color: Color.fromRGBO(107, 119, 140, 1),
                                            fontSize: 14.0
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 16.0),
                                      child: Text(
                                        'khanh123@gmail.com',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(18, 35, 56, 1),
                                            fontSize: 14.0
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 16.0),
                                      child: Text(
                                        'Tên văn bản',
                                        style: TextStyle(
                                            color: Color.fromRGBO(107, 119, 140, 1),
                                            fontSize: 14.0
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 16.0),
                                      child: Text(
                                        'Hợp đồng dịch vụ VMI-NACENCOMM 13.7.20.doc',
                                        style: TextStyle(
                                            height: 1.3,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(18, 35, 56, 1),
                                            fontSize: 14.0
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 16.0),
                                      child: Text(
                                        'Trạng thái',
                                        style: TextStyle(
                                            color: Color.fromRGBO(107, 119, 140, 1),
                                            fontSize: 14.0
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Không thành công',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.red,
                                                fontSize: 14.0
                                            ),
                                          ),
                                          SizedBox(height: 4.0,),
                                          Text(
                                            '12:05 - 3/12/2020',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(183, 192, 204, 1),
                                                fontSize: 14.0
                                            ),
                                          )
                                        ],
                                      )
                                    ),
                                  ])
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 44,
                        child: FlatButton(
                          onPressed: () {
                            launch('https://drive.google.com/file/d/1Lyoa0EgcYn-pXm0j-WvBp1s07sx4kgdf/view?usp=sharing');
                          },
                          child: Text(
                            'Xem văn bản',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textColor: Color.fromRGBO(37, 110, 189, 1),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color.fromRGBO(37, 110, 189, 1)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
        )
    );
  }
}