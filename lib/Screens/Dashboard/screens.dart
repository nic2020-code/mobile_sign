import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myApp/app_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:myApp/Screens/Dashboard/request_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
  const HomeScreen({Key key}) : super(key: key);
}

class HomeState extends State<HomeScreen> {

  final List<RequestData> requestData = [
    RequestData(1, 'assets/images/edoc_request.png', 'Yêu cầu ký văn bản từ Nguyễn Văn Khanh', 'VMI-NACENCOMM 13.7.20.doc', '5 giờ trước'),
    RequestData(2, 'assets/images/einvoice_request.png', 'Yêu cầu đăng nhập từ Ca2-Einvoice', 'Device PC-DE5Z 009', '2 giờ trước')
  ];

  Widget buildRequestCard(BuildContext context, int index) {
    return Container(
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)),
          elevation: 2,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              requestData[index].image),
                        ),
                      ),
                      width: 30,
                      height: 30,
                    ),

                    Flexible(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                requestData[index].requestName,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(9, 30, 66, 1)
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text(
                                requestData[index].fileName,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(107, 119, 140, 1)
                                ),
                              ),
                              SizedBox(height: 12,),
                              Text(
                                requestData[index].requestDate,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(183, 192, 204, 1)
                                ),
                              )
                            ],
                          ),)
                    )
                  ]),
            ),))
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 130,
          title: FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Container(
              child: Row(
                  children: [
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
                                fontFamily: 'Gilroy',
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
                                fontFamily: 'Gilroy',
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
                icon: Icon(MyFlutterApp.messenger_dashboard,
                    color: Colors.white),
                onPressed: () {
                  launch('https://www.facebook.com/nacencommca2');
                }),
            IconButton(
                iconSize: 20,
                icon: Icon(MyFlutterApp.call_support,
                    color: Colors.white),
                onPressed: () {
                  launch('tel://1900545407');
                }),
          ],
          backgroundColor: Color.fromRGBO(17, 57, 125, 1),
          elevation: 0,
        ),
          body: Container(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: ListView.builder(
                    itemCount: requestData.length,
                    itemBuilder: (BuildContext context, int index) => buildRequestCard(context, index)
                )
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
    return Container(
      child: FlatButton(
        child: Text("Push other Settings"),
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

class QRScreen extends StatelessWidget {
  final Function openQRCode;
  const QRScreen({Key key, this.openQRCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text("Push other Settings"),
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
        child: Text("Push other Settings"),
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
        child: Text("Push other Settings"),
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