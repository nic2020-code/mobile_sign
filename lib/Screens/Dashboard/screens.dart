import 'package:flutter/material.dart';
import 'package:myApp/app_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:myApp/Screens/Dashboard/components/card_widget.dart';
import 'package:myApp/Screens/SettingAccount/detail_screen.dart';
import 'package:myApp/Screens/SettingAccount/components/list_items_widget.dart';
import 'package:myApp/Screens/Dashboard/components/notification_widget.dart';

class HomeScreen extends StatelessWidget {
  final Function openHome;
  const HomeScreen({Key key, this.openHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/dashboard_header.png'),
                ),
              ),
              child: SafeArea(
                minimum: EdgeInsets.only(left: 24, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
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
                                      width: 340.0,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          color: Color.fromRGBO(
                                                              208, 215, 226, 1),
                                                          width: 1.0))),
                                              padding: EdgeInsets.all(16.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Thông tin chi tiết',
                                                    style: TextStyle(
                                                        fontSize: 16.0,
                                                        color: Color.fromRGBO(
                                                            9, 30, 66, 1)),
                                                  ),
                                                  Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    child: IconButton(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        icon: Icon(
                                                          Icons.close_outlined,
                                                          color: Color.fromRGBO(
                                                              107, 119, 140, 1),
                                                        ),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        }),
                                                  )
                                                ],
                                              )),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: Color.fromRGBO(208, 215, 226, 1), width: 1.0))),
                                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Cá nhân',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            color: Color.fromRGBO(107, 119, 140, 1)),
                                                      ),
                                                      SizedBox(
                                                        height: 12.0,
                                                      ),
                                                      Text(
                                                        'Nguyễn văn khanh'
                                                            .toUpperCase(),
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Color.fromRGBO(9, 30, 66, 1),
                                                            fontWeight: FontWeight.w600),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: Color.fromRGBO(208, 215, 226, 1), width: 1.0))),
                                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Mã số thuế',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            color: Color.fromRGBO(107, 119, 140, 1)),
                                                      ),
                                                      SizedBox(
                                                        height: 12.0,
                                                      ),
                                                      Text(
                                                        '0103930279',
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Color.fromRGBO(9, 30, 66, 1),
                                                            fontWeight: FontWeight.w600),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: Color.fromRGBO(208, 215, 226, 1), width: 1.0))),
                                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Thời hạn hoạt động',
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            color: Color.fromRGBO(107, 119, 140, 1)),
                                                      ),
                                                      SizedBox(
                                                        height: 12.0,
                                                      ),
                                                      Text(
                                                        '12/01/2020 - 12/01/2022',
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Color.fromRGBO(9, 30, 66, 1),
                                                            fontWeight: FontWeight.w600),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                );
                              },
                            );
                          },
                          child: Container(
                            child: Row(children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/user_dashboard.png'),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nguyễn Văn Khanh',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Cá nhân',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                                iconSize: 20,
                                icon: Icon(MyFlutterApp.messenger_dashboard,
                                    color: Colors.white),
                                onPressed: () {
                                  launch(
                                      'https://www.facebook.com/nacencommca2');
                                }),
                            IconButton(
                                iconSize: 20,
                                icon: Icon(MyFlutterApp.call_support,
                                    color: Colors.white),
                                onPressed: () {
                                  launch('tel://1900545407');
                                }),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: 12.0, top: 36.0, bottom: 16.0, left: 12.0),
              child: Text(
                'Yêu cầu chờ ký (${requestData.length})',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color.fromRGBO(9, 30, 66, 1)),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: requestData.length,
                  itemBuilder: (BuildContext context, int index) =>
                      buildRequestCard(context, index)),
            )
          ],
        ),
      ),
    );
  }
}

class HistoryScreen extends StatelessWidget {
  final Function openHistory;
  const HistoryScreen({Key key, this.openHistory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 57, 125, 1),
        title: Text(
          'Hoạt động ký',
          style: TextStyle(
              // fontFamily: 'Gilroy',
              fontSize: 18.0,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              iconSize: 20,
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {}),
          FlatButton.icon(
              label: Text(
                'Lọc',
                style: TextStyle(color: Colors.white),
              ),
              icon: Icon(
                Icons.sort_outlined,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 24.0, left: 12.0, right: 12.0),
        child: ListView.builder(
            itemCount: requestData.length,
            itemBuilder: (BuildContext context, int index) =>
                buildHistoryCard(context, index)),
      ),
    );
  }
}

class QRScreen extends StatelessWidget {
  final Function openQRCode;
  const QRScreen({Key key, this.openQRCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('QR Code')
    );
  }
}

class NotificationScreen extends StatelessWidget {
  final Function openNotification;
  const NotificationScreen({Key key, this.openNotification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(247, 248, 252, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(17, 57, 125, 1),
          title: Text(
            'Thông báo',
            style: TextStyle(
                // fontFamily: 'Gilroy',
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
          actions: [
            FlatButton(
                child: Text(
                  "Xoá hết",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                onPressed: () {}),
          ],
        ),
        body: Container(
            padding: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              color: Colors.white,
              child: ListView.builder(
                  // separatorBuilder: (context, index) => Divider(
                  //   color: Colors.black,
                  // ),
                  itemCount: requestData.length,
                  itemBuilder: (BuildContext context, int index) =>
                      buildNotiCard(context, index)),
            )));
  }
}

class AccountScreen extends StatelessWidget {
  final Function openAccount;
  const AccountScreen({Key key, this.openAccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200.0,
                      color: Colors.white,
                    ),
                    Container(
                      height: 90.0,
                      decoration: new BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color.fromRGBO(13, 86, 209, 1),
                            blurRadius: 8,
                          )
                        ],
                        color: Color.fromRGBO(17, 57, 125, 1),
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.elliptical(
                                MediaQuery.of(context).size.width, 50.0)),
                      ),
                    ),
                    Positioned(
                        top: 40.0,
                        left: 20.0,
                        child: Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('assets/images/avatar_user.png'),
                            ),
                          ),
                        )),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chứng thư số cho cá nhân',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(107, 119, 140, 1)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'nguyễn văn khanh'.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(9, 30, 66, 1)),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                '',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(9, 30, 66, 1)),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
                SizedBox(height: 15),
                settingItems1(context, CertInfo(), Icons.error_rounded,
                    'Thông tin Chứng thư số'),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Cài đặt',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(9, 30, 66, 1)),
                  ),
                ),
                settingItems(context, SecuritySetting(), Icons.security,
                    'Thiết lập bảo mật'),
                settingItems(context, ChangePIN(), Icons.lock_outline_rounded,
                    'Thay đổi mã PIN'),
                settingItems(
                    context, SetLang(), Icons.language, 'Thiết lập ngôn ngữ'),
                settingItems(context, SetNoti(), Icons.notifications,
                    'Thiết lập thông báo'),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Hỗ trợ & liên hệ',
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
                    leading: Icon(
                      Icons.email,
                      color: Color.fromRGBO(107, 119, 140, 1),
                    ),
                    title: Text(
                      'Phản hồi cho chúng tôi',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(52, 69, 99, 1)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 20.0,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.0),
                  decoration: BoxDecoration(color: Colors.white),
                  child: ListTile(
                    leading: Icon(
                      Icons.chat_rounded,
                      color: Color.fromRGBO(107, 119, 140, 1),
                    ),
                    title: Text(
                      'Chat với hỗ trợ',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(52, 69, 99, 1)),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 20.0,
                    ),
                    onTap: () {},
                  ),
                ),
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
                      'Hotline 1900-54-54-07',
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
                SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.only(top: 1.0),
                  decoration: BoxDecoration (
                      color: Colors.white
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.create_new_folder,
                      color: Color.fromRGBO(107, 119, 140, 1),
                    ),
                    title: Text(
                      'Đăng ký dịch vụ mới',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(52, 69, 99, 1)
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.0),
                  decoration: BoxDecoration(color: Colors.white),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    title: Text(
                      'Đăng xuất',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
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
                              height: 183.0,
                              width: 340.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 32.0, left: 16.0),
                                    child: Text(
                                      'Đăng xuất',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(18, 35, 56, 1)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.0, bottom: 32.0),
                                    child: Text(
                                      'Bạn thực sự muốn đăng xuất?',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Color.fromRGBO(18, 35, 56, 1)),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: FlatButton(
                                            padding: EdgeInsets.symmetric(vertical: 13.0),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              child: Text(
                                                'huỷ'.toUpperCase(),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            textColor: Color.fromRGBO(9, 53, 11, 1),
                                            color: Color.fromRGBO(199, 206, 216, 1),
                                              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0))
                                          ),
                                        ),
                                        Container(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: FlatButton(
                                            padding: EdgeInsets.symmetric(vertical: 13.0),
                                            onPressed: () {},
                                            child: Text(
                                              'Đăng xuất'.toUpperCase(),
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            textColor: Colors.white,
                                            color: Color.fromRGBO(26, 65, 171, 1),
                                              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0))
                                          ),
                                        )
                                      ],
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
                ),
                SizedBox(height: 45),
              ],
            ),
          )
        ],
      ),
    );
  }
}
