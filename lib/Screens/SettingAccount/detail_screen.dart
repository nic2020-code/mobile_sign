import 'package:flutter/material.dart';
import 'package:myApp/Screens/SettingAccount/screens/change_PIN_form.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/list_items_widget.dart';

class CertInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 57, 125, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Thông tin chứng thư số',
          style: TextStyle(
            // fontFamily: 'Gilroy',
              fontSize: 18.0,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 8.0),
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                      'Công Ty Thương Mại Cổ Phần Công Nghệ Thẻ NACENCOMM'.toUpperCase(),
                    style: TextStyle(
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: Color.fromRGBO(9, 30, 66, 1)
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Table(
                      columnWidths: {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(4),
                      },
                      children: [
                        TableRow(children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'MTS',
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 119, 140, 1),
                                  fontSize: 14.0
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              '010 393 0279',
                              style: TextStyle(
                                  color: Color.fromRGBO(52, 69, 99, 1),
                                  fontSize: 14.0
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Serial',
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 119, 140, 1),
                                  fontSize: 14.0
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              '123U-ĐN-ASN-R21-3849-012-858',
                              style: TextStyle(
                                  color: Color.fromRGBO(52, 69, 99, 1),
                                  fontSize: 14.0
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            child: Text(
                              'Thời hạn',
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 119, 140, 1),
                                  fontSize: 14.0
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              '28/02/2019 - 28/02/2020',
                              style: TextStyle(
                                  color: Color.fromRGBO(52, 69, 99, 1),
                                  fontSize: 14.0
                              ),
                            ),
                          ),
                        ])
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 12.0),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(82, 182, 64, 1)),
                      ),
                      Text(
                          'Đang hoạt động',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color.fromRGBO(82, 182, 64, 1)
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.0, left: 16.0, bottom: 16.0),
              child: Text(
                'Thiết bị',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(9, 30, 66, 1)),
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'iPhone X',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: Color.fromRGBO(9, 30, 66, 1)
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                      'HFNS-JSHEFHU-ZJSD-BHD',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(107, 119, 140, 1)
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.0),
              decoration: BoxDecoration (
                  color: Colors.white
              ),
              child: ListTile(
                leading: Icon(
                  Icons.link_off,
                    color: Color.fromRGBO(222, 53, 11, 1)
                ),
                title: Text(
                  'Ngắt kết nối thiết bị',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color.fromRGBO(222, 53, 11, 1)
                  ),
                ),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecuritySetting extends StatefulWidget {
  @override
  _SecuritySettingState createState() => _SecuritySettingState();
}

class _SecuritySettingState extends State<SecuritySetting> {
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
      ),
    );
  }
}

class ChangePIN extends StatefulWidget {
  @override
  _ChangePINState createState() => _ChangePINState();
}

class _ChangePINState extends State<ChangePIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 57, 125, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Thay đổi mã PIN',
          style: TextStyle(
            // fontFamily: 'Gilroy',
              fontSize: 18.0,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Lựa chọn phương thức thay đổi mã PIN',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(9, 30, 66, 1)),
            ),
          ),
          settingItems1(context, ChangePINForm(), Icons.security,
              'Thay đổi mã PIN'),
          Container(
            margin: EdgeInsets.only(top: 1.0),
            decoration: BoxDecoration (
                color: Colors.white
            ),
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: Color.fromRGBO(107, 119, 140, 1),
              ),
              title: Text(
                'Liên hệ chăm sóc khách hàng',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(52, 69, 99, 1)
                ),
              ),
              onTap: () {
                launch('tel://1900545407');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SetLang extends StatefulWidget {
  @override
  _SetLangState createState() => _SetLangState();
}

class _SetLangState extends State<SetLang> {
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
      ),
    );
  }
}

class SetNoti extends StatefulWidget {
  @override
  _SetNotiState createState() => _SetNotiState();
}

class _SetNotiState extends State<SetNoti> {
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
      ),
    );
  }
}

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
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
      ),
    );
  }
}

class CustomerService extends StatefulWidget {
  @override
  _CustomerServiceState createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
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
      ),
    );
  }
}

class NewPlan extends StatefulWidget {
  @override
  _NewPlanState createState() => _NewPlanState();
}

class _NewPlanState extends State<NewPlan> {
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
      ),
    );
  }
}






