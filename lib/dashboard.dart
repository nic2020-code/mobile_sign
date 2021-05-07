import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myApp/app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

// class ColorsListPage extends StatelessWidget {
//   ColorsListPage({this.color, this.title, this.onPush});
//   final MaterialColor color;
//   final String title;
//   final ValueChanged<int> onPush;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             title,
//           ),
//           backgroundColor: color,
//         ),
//         body: Container(
//           color: Colors.white,
//           child: _buildList(),
//         ));
//   }
//
//   final List<int> materialIndices = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50];
//
//   Widget _buildList() {
//     return ListView.builder(
//         itemCount: materialIndices.length,
//         itemBuilder: (BuildContext content, int index) {
//           int materialIndex = materialIndices[index];
//           return Container(
//             color: color[materialIndex],
//             child: ListTile(
//               title: Text('$materialIndex', style: TextStyle(fontSize: 24.0)),
//               trailing: Icon(Icons.chevron_right),
//               onTap: () => onPush(materialIndex),
//             ),
//           );
//         });
//   }
// }
//
// class ColorDetailPage extends StatelessWidget {
//   ColorDetailPage({this.color, this.title, this.materialIndex: 500});
//   final MaterialColor color;
//   final String title;
//   final int materialIndex;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: color,
//         title: Text(
//           '$title[$materialIndex]',
//         ),
//       ),
//       body: Container(
//         color: color[materialIndex],
//       ),
//     );
//   }
// }

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardScreen();
  }
}

class DashboardScreen extends State<Dashboard> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();

  // void _goToRequestDetail(BuildContext context) {
  //
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => ConnectDevice()));
  // }

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(107, 119, 140, 1));
  static List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
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
                    Row(
                      children: [
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 36, bottom: 20),
                          child: Text(
                            'Yêu cầu chờ ký (05)',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(9, 30, 66, 1)
                              ),
                            ),
                          ),
                        ),
                      Container(
                        width: double.infinity,
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
                                                    'assets/images/edoc_request.png'),
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
                                                  'Yêu cầu ký văn bản từ Nguyễn Văn Khanh',
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color.fromRGBO(9, 30, 66, 1)
                                                  ),
                                                ),
                                                SizedBox(height: 4,),
                                                Text(
                                                  'VMI-NACENCOMM 13.7.20.doc',
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(107, 119, 140, 1)
                                                  ),
                                                ),
                                                SizedBox(height: 12,),
                                                Text(
                                                  '5 giờ trước',
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
                            ),)),
                      ),
                      Container(
                        width: double.infinity,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 2,
                            child: InkWell(
                              onTap: (){},
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
                                                    'assets/images/einvoice_request.png'),
                                              ),
                                            ),
                                            width: 30,
                                            height: 30,

                                      ),
                                      Flexible(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 16),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Yêu cầu đăng nhập từ Ca2-Einvoice',
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color.fromRGBO(9, 30, 66, 1)
                                                  ),
                                                ),
                                                SizedBox(height: 4,),
                                                Text(
                                                  'Device PC-DE5Z 009',
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(107, 119, 140, 1)
                                                  ),
                                                ),
                                                SizedBox(height: 12,),
                                                Text(
                                                  '2 giờ trước',
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
                            ),)),
                      ),
                ]),
              ),
            ],
          ),
        )
      ],
    ),
    Column(
      children: [
        Container(
          height: 65,
          color: Color.fromRGBO(17, 57, 125, 1),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hoạt động ký',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gilroy',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 36,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                                Icons.search,
                                color: Colors.white
                            ),
                          ),
                        ),
                        FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.sort, color: Colors.white),
                          label: Text('Lọc',style: TextStyle(color: Colors.white),),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 24),
                        width: double.infinity,
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
                                                    'assets/images/edoc_request.png'),
                                              ),
                                            ),
                                            width: 30,
                                            height: 30,
                                          ),

                                      Flexible(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 16, right: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Yêu cầu ký văn bản từ Nguyễn Văn Khanh',
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color.fromRGBO(9, 30, 66, 1)
                                                  ),
                                                ),
                                                SizedBox(height: 4,),
                                                Text(
                                                  'VMI-NACENCOMM 13.7.20.doc',
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(107, 119, 140, 1)
                                                  ),
                                                ),
                                                SizedBox(height: 12,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      '5 giờ trước',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color.fromRGBO(183, 192, 204, 1)
                                                      ),
                                                    ),
                                                    Text(
                                                      'Không thành công',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color.fromRGBO(222, 53, 11, 1)
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),)
                                      )
                                    ]),
                              ),)),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 2,
                                child: InkWell(
                                  onTap: (){},
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
                                                    'assets/images/einvoice_request.png'),
                                              ),
                                            ),
                                            width: 30,
                                            height: 30,
                                          ),

                                          Flexible(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 16, right: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Yêu cầu đăng nhập từ Ca2-Einvoice',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          color: Color.fromRGBO(9, 30, 66, 1)
                                                      ),
                                                    ),
                                                    SizedBox(height: 4,),
                                                    Text(
                                                      'Device PC-DE5Z 009',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color.fromRGBO(107, 119, 140, 1)
                                                      ),
                                                    ),
                                                    SizedBox(height: 12,),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          '2 giờ trước',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color.fromRGBO(183, 192, 204, 1)
                                                          ),
                                                        ),
                                                        Text(
                                                          'Thành công',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color.fromRGBO(82, 182, 64, 1)
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                          )
                                        ]
                                    ),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        )
      ],
    ),
    Text(
      'QR Code',
      style: optionStyle,
    ),
    Column(
      children: [
        Container(
          height: 65,
          color: Color.fromRGBO(17, 57, 125, 1),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Thông báo',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gilroy',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                    Row(
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Text('Xoá hết',style: TextStyle(color: Colors.white),),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 12),
                        color: Colors.white,
                        width: double.infinity,
                        height: 655,
                        padding: EdgeInsets.only(right: 16, left: 16),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Card(
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Color.fromRGBO(151, 160, 175, 0.5),width: 1.0))
                                    ),
                                    padding: EdgeInsets.only(bottom: 16, top: 16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(1, 56, 166, 1),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            child: SizedBox(
                                              child: Icon(
                                                MyFlutterApp.mail_icon,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 10, right: 16),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Ngồi nhà thành thơi, ký mọi giấy tờ',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          color: Color.fromRGBO(9, 30, 66, 1)
                                                      ),
                                                    ),
                                                    SizedBox(height: 4),
                                                    Text(
                                                      'Nhằm đáp ứng theo xu thế 4.0 và nhu cầu của thị trường',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color.fromRGBO(151, 160, 175, 1)
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 16.0,
                                            color: Color.fromRGBO(151, 160, 175, 1),
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Color.fromRGBO(151, 160, 175, 0.5),width: 1.0))
                                    ),
                                    padding: EdgeInsets.only(bottom: 16, top: 16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(1, 56, 166, 1),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            child: SizedBox(
                                              child: Icon(
                                                MyFlutterApp.mail_icon,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 10, right: 16),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Ngồi nhà thành thơi, ký mọi giấy tờ',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          color: Color.fromRGBO(9, 30, 66, 1)
                                                      ),
                                                    ),
                                                    SizedBox(height: 4),
                                                    Text(
                                                      'Nhằm đáp ứng theo xu thế 4.0 và nhu cầu của thị trường',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color.fromRGBO(151, 160, 175, 1)
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 16.0,
                                            color: Color.fromRGBO(151, 160, 175, 1),
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Color.fromRGBO(151, 160, 175, 0.5),width: 1.0))
                                    ),
                                    padding: EdgeInsets.only(bottom: 16, top: 16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(1, 56, 166, 1),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            child: SizedBox(
                                              child: Icon(
                                                MyFlutterApp.exclamation_icon,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 10, right: 16),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Ngồi nhà thành thơi, ký mọi giấy tờ',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          color: Color.fromRGBO(9, 30, 66, 1)
                                                      ),
                                                    ),
                                                    SizedBox(height: 4),
                                                    Text(
                                                      'Nhằm đáp ứng theo xu thế 4.0 và nhu cầu của thị trường',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color.fromRGBO(151, 160, 175, 1)
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 16.0,
                                            color: Color.fromRGBO(151, 160, 175, 1),
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Color.fromRGBO(151, 160, 175, 0.5),width: 1.0))
                                    ),
                                    padding: EdgeInsets.only(bottom: 16, top: 16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(107, 119, 140, 1),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                            child: SizedBox(
                                              child: Icon(
                                                MyFlutterApp.mail_icon,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 10, right: 16),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Ngồi nhà thành thơi, ký mọi giấy tờ',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          color: Color.fromRGBO(9, 30, 66, 1)
                                                      ),
                                                    ),
                                                    SizedBox(height: 4),
                                                    Text(
                                                      'Nhằm đáp ứng theo xu thế 4.0 và nhu cầu của thị trường',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color.fromRGBO(151, 160, 175, 1)
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 16.0,
                                            color: Color.fromRGBO(151, 160, 175, 1),
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ),

                    ]
                ),
              ),
            ],
          ),
        )
      ],
    ),
    Text(
      'Index 4: Tài khoản',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard",
      home: Scaffold(
        // body: _widgetOptions.elementAt(_selectedIndex),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: SizedBox(
          height: 72,
          child: Container(
            decoration: BoxDecoration(boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                blurRadius: 12,
              ),
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                iconSize: 20,
                selectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                items: [
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      child: Icon(MyFlutterApp.home_icon),
                      width: 30,
                      height: 30,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      child: Icon(MyFlutterApp.history_icon),
                      width: 30,
                      height: 30,
                    ),
                    label: 'Lịch sử',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(13, 86, 209, 1),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: SizedBox(
                          child: Icon(
                            MyFlutterApp.qr_code,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      child: Icon(MyFlutterApp.noti_icon),
                      width: 30,
                      height: 30,
                    ),
                    label: 'Thông báo',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      child: Icon(MyFlutterApp.user_icon),
                      width: 30,
                      height: 30,
                    ),
                    label: 'Tài khoản',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Color.fromRGBO(13, 86, 209, 1),
                unselectedItemColor: Color.fromRGBO(107, 119, 140, 1),
                unselectedFontSize: 10,
                onTap: _onItemTapped,
              ),
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(247, 248, 252, 1),
        key: _scaffoldKey,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
