import 'package:flutter/material.dart';
import 'package:myApp/app_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:myApp/Screens/Dashboard/components/card_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
  const HomeScreen({Key key}) : super(key: key);
}

class HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 130,
        title: FlatButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Container(
                      width: 366.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(208, 215, 226, 1),
                                          width: 1.0))),
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Thông tin chi tiết',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color.fromRGBO(9, 30, 66, 1)),
                                  ),
                                  Container(
                                    width: 20.0,
                                    height: 20.0,
                                    child: IconButton(
                                        padding: EdgeInsets.zero,
                                        icon: Icon(
                                          Icons.close_outlined,
                                          color:
                                              Color.fromRGBO(107, 119, 140, 1),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        }),
                                  )
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color.fromRGBO(
                                                  208, 215, 226, 1),
                                              width: 1.0))),
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Cá nhân',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Color.fromRGBO(
                                                107, 119, 140, 1)),
                                      ),
                                      SizedBox(
                                        height: 12.0,
                                      ),
                                      Text(
                                        'Nguyễn văn khanh'.toUpperCase(),
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
                                              color: Color.fromRGBO(
                                                  208, 215, 226, 1),
                                              width: 1.0))),
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mã số thuế',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Color.fromRGBO(
                                                107, 119, 140, 1)),
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
                                              color: Color.fromRGBO(
                                                  208, 215, 226, 1),
                                              width: 1.0))),
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Thời hạn hoạt động',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Color.fromRGBO(
                                                107, 119, 140, 1)),
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
                    image: AssetImage('assets/images/user_dashboard.png'),
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
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Cá nhân',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 14.0),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
        actions: [
          IconButton(
              iconSize: 20,
              icon: Icon(MyFlutterApp.messenger_dashboard, color: Colors.white),
              onPressed: () {
                launch('https://www.facebook.com/nacencommca2');
              }),
          IconButton(
              iconSize: 20,
              icon: Icon(MyFlutterApp.call_support, color: Colors.white),
              onPressed: () {
                launch('tel://1900545407');
              }),
        ],
        backgroundColor: Color.fromRGBO(17, 57, 125, 1),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16, left: 12, right: 12),
        child: Column(
          children: <Widget>[
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
    return Container(
      child: FlatButton(
        child: Text("QR Code"),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NewPage(),
            ),
          );
        },
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  final Function openNotification;
  const NotificationScreen({Key key, this.openNotification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text("Notification"),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NewPage(),
            ),
          );
        },
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  final Function openAccount;
  const AccountScreen({Key key, this.openAccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text("Settings"),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NewPage(),
            ),
          );
        },
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Screen',
        ),
      ),
      body: Container(
        child: FlatButton(
          child: Text("Push new Screen"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NewPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
