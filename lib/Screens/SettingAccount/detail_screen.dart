import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myApp/Screens/SettingAccount/screens/change_PIN_form.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:myApp/Screens/SettingAccount/components/list_items_widget.dart';

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
              fontWeight: FontWeight.w500),
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
                    'Công Ty Thương Mại Cổ Phần Công Nghệ Thẻ NACENCOMM'
                        .toUpperCase(),
                    style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: Color.fromRGBO(9, 30, 66, 1)),
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
                                  fontSize: 14.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              '010 393 0279',
                              style: TextStyle(
                                  color: Color.fromRGBO(52, 69, 99, 1),
                                  fontSize: 14.0),
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
                                  fontSize: 14.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              '123U-ĐN-ASN-R21-3849-012-858',
                              style: TextStyle(
                                  color: Color.fromRGBO(52, 69, 99, 1),
                                  fontSize: 14.0),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            child: Text(
                              'Thời hạn',
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 119, 140, 1),
                                  fontSize: 14.0),
                            ),
                          ),
                          Container(
                            child: Text(
                              '28/02/2019 - 28/02/2020',
                              style: TextStyle(
                                  color: Color.fromRGBO(52, 69, 99, 1),
                                  fontSize: 14.0),
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
                            color: Color.fromRGBO(82, 182, 64, 1)),
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
                        color: Color.fromRGBO(9, 30, 66, 1)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'HFNS-JSHEFHU-ZJSD-BHD',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(107, 119, 140, 1)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.0),
              decoration: BoxDecoration(color: Colors.white),
              child: ListTile(
                leading:
                    Icon(Icons.link_off, color: Color.fromRGBO(222, 53, 11, 1)),
                title: Text(
                  'Ngắt kết nối thiết bị',
                  style: TextStyle(
                      fontSize: 14.0, color: Color.fromRGBO(222, 53, 11, 1)),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return Dialog(
                        insetPadding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Container(
                          height: 268.0,
                          width: 340.0,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 44,
                                alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromRGBO(
                                                208, 215, 226, 1),
                                            width: 1.0))),
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
                                    }),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                margin: EdgeInsets.only(top: 60.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Bạn có chắc chắn muốn ngắt kết nối với thiết bị này không?',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(18, 35, 56, 1)),
                                    ),
                                    SizedBox(
                                      height: 12.0,
                                    ),
                                    RichText(
                                      text: TextSpan(children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'Sau khi "Ngắt kết nối" với thiết bị, nếu muốn kết nối lại, vui lòng liên hệ tổng đài CSKH',
                                          style: TextStyle(
                                              height: 1.6,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  80, 95, 121, 1)),
                                        ),
                                        TextSpan(
                                          text: ' 1900 5454 07 ',
                                          style: TextStyle(
                                              height: 1.6,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  37, 110, 189, 1),
                                              fontWeight: FontWeight.w500),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              final url = 'tel://1900545407';
                                              if (await canLaunch(url)) {
                                                await launch(
                                                  url,
                                                  forceSafariVC: false,
                                                );
                                              }
                                            },
                                        ),
                                        TextSpan(
                                          text: 'để được hướng dẫn chi tiết.',
                                          style: TextStyle(
                                              height: 1.6,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  80, 95, 121, 1)),
                                        )
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Align(
                                  alignment: FractionalOffset.bottomCenter,
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 65,
                                    child: FlatButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.link_off),
                                      label: Text(
                                        'Ngắt kết nối thiết bị',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      textColor: Color.fromRGBO(222, 53, 11, 1),
                                      color: Colors.transparent,
                                      shape: Border(
                                          top: BorderSide(
                                              color: Color.fromRGBO(
                                                  196, 205, 217, 1),
                                              width: 1)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
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

  int _languageIndex = -1;

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
          'Thiết lập bảo mật',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Lựa chọn phương thức xác thực',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(9, 30, 66, 1)),
            ),
          ),
          methodList(Icons.lock, 'Sử dụng mã PIN', Icons.done_rounded, 0),
          methodList(Icons.radio_button_checked_rounded, 'Thiết lập mã Patten', Icons.done_rounded, 1),
          methodList(Icons.fingerprint_rounded, 'Thiết lập vân tay', Icons.done_rounded, 2),
          methodList(Icons.center_focus_strong_rounded, 'Thiết lập FaceID', Icons.done_rounded, 3)
        ],
      ),
    );
  }

  Widget methodList(IconData leadingIcon, String settingTitle, IconData trailingIcon, int index) {
    bool isSelected = _languageIndex == index;
    return Container(
      margin: EdgeInsets.only(top: 1.0),
      decoration: BoxDecoration (
          color: Colors.white
      ),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: Color.fromRGBO(107, 119, 140, 1),
        ),
        title: Text(
          settingTitle,
          style: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(9, 30, 66, 1)
          ),
        ),
        trailing: Icon(
          trailingIcon,
            color: isSelected ? Colors.green : Colors.transparent
        ),
        onTap: () => setState(() => _languageIndex = index),
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
          settingItems1(
              context, ChangePINForm(), Icons.security, 'Thay đổi mã PIN'),
          Container(
            margin: EdgeInsets.only(top: 1.0),
            decoration: BoxDecoration(color: Colors.white),
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
                    color: Color.fromRGBO(52, 69, 99, 1)),
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
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 57, 125, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Thiết lập ngôn ngữ',
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
              'Lựa chọn ngôn ngữ hiển thị',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(9, 30, 66, 1)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 1.0),
            decoration: BoxDecoration(color: Colors.white),
            child: ListTile(
              title: Text(
                'Tiếng Việt',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(9, 30, 66, 1)),
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 1.0),
            decoration: BoxDecoration(color: Colors.white),
            child: ListTile(
              title: Text(
                'English',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromRGBO(9, 30, 66, 1)),
              ),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}

class SetNoti extends StatefulWidget {
  @override
  _SetNotiState createState() => _SetNotiState();
}

class _SetNotiState extends State<SetNoti> {

  Widget stringSwitch(
      String text, bool val, bool newval, Function onChangedMethod) {
    return Container(
      margin: EdgeInsets.only(top: 1.0),
      decoration: BoxDecoration(color: Colors.white),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
              fontSize: 14.0,
              color: Color.fromRGBO(9, 30, 66, 1)),
        ),
        trailing: CupertinoSwitch(
            trackColor: Color.fromRGBO(151, 160, 175, 1),
            activeColor: Color.fromRGBO(52, 199, 89, 1),
            value: val,
            onChanged: (newval) {
              onChangedMethod(newval);
            }),
        onTap: () {},
      ),
    );
  }

  bool signVal1 = true, signVal2 = false, signVal3 = true;
  bool signNewval1, signNewval2, signNewval3;

  onChangedSign1(bool signNewval1) {
    setState(() {
      signVal1 = signNewval1;
    });
  }

  onChangedSign2(bool signNewval2) {
    setState(() {
      signVal2 = signNewval2;
    });
  }

  onChangedSign3(bool signNewval3) {
    setState(() {
      signVal3 = signNewval3;
    });
  }

  bool newsVal1 = true, newsVal2 = true, newsVal3 = true;
  bool newsNewval1, newsNewval2, newsNewval3;

  onChangedNews1(bool newsNewval1) {
    setState(() {
      newsVal1 = newsNewval1;
    });
  }

  onChangedNews2(bool newsNewval2) {
    setState(() {
      newsVal2 = newsNewval2;
    });
  }

  onChangedNews3(bool newsNewval3) {
    setState(() {
      newsVal3 = newsNewval3;
    });
  }

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
          'Thiết lập thông báo',
          style: TextStyle(
            // fontFamily: 'Gilroy',
              fontSize: 18.0,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16),
              child: Text(
                'Yêu cầu ký',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(9, 30, 66, 1)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6, left: 16, bottom: 16),
              child: Text(
                'Nhận thông báo khi có yêu cầu ký mới',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromRGBO(151, 160, 175, 1)),
              ),
            ),
            stringSwitch('Đẩy thông báo', signVal1, signNewval1, onChangedSign1),
            stringSwitch('Email', signVal2, signNewval2, onChangedSign2),
            stringSwitch('SMS', signVal3, signNewval3, onChangedSign3),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16),
              child: Text(
                'Tin tức',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(9, 30, 66, 1)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6, left: 16, bottom: 16),
              child: Text(
                'Nhận thông báo khi có tin tức mới nhất',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromRGBO(151, 160, 175, 1)),
              ),
            ),
            stringSwitch('Đẩy thông báo', newsVal1, newsNewval1, onChangedNews1),
            stringSwitch('Email', newsVal2, newsNewval2, onChangedNews2),
            stringSwitch('SMS', newsVal3, newsNewval3, onChangedNews3)
          ],
        ),
      ),
    );
  }
}
