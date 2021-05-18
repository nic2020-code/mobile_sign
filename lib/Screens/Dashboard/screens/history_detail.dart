import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';

class HistoryDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HistoryState();
}

class HistoryState extends State<HistoryDetail> {

  TextEditingController numberFieldCtrl = TextEditingController();
  bool _pinValidate = false;
  String _numberValidate;
  bool countDownComplete = false;

  void _onButtonShowModalSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 56.0,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(208, 215, 226, 1),
                              width: 1.0
                          )
                      )
                  ),
                  child: Stack(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Xác thực tài khoản',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(9, 30, 66, 1)
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.close_outlined,
                              color: Color.fromRGBO(107, 119, 140, 1),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.symmetric(horizontal: 60.0),
                  height: 64,
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(fontSize: 32, letterSpacing: 12),
                    textAlign: TextAlign.center,
                    obscureText: true,
                    keyboardType: TextInputType.numberWithOptions(),
                    textInputAction: TextInputAction.done,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    maxLength: 6,
                    autofocus: true,
                    enableInteractiveSelection: false,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(20),
                      labelStyle: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Gilroy',
                        color: Color.fromRGBO(193, 199, 208, 1),
                      ),
                      counterText: "",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          borderSide: BorderSide(color: Color.fromRGBO(208, 215, 226, 1))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          borderSide: BorderSide(color: Color.fromRGBO(208, 215, 226, 1))),
                    ),
                    controller: numberFieldCtrl,
                    // focusNode: focusNode,
                    onChanged: (text) {
                      setState(() {
                        _numberValidate = text;
                        _pinValidate = false;
                      });
                    },
                  ),
                ),
              ],
            ),
          );
        }
    );
  }

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