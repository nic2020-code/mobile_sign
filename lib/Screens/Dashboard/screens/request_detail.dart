import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';

class RequestDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RequestState();
}

class RequestState extends State<RequestDetail> {

  final numberFieldCtrl = TextEditingController();
  bool _pinValidate = false; //true > hiện error-text của textfield

  @override
  void initState() {
    super.initState();
    numberFieldCtrl.addListener(_onChange);
  }

  @override
  void dispose() {
    numberFieldCtrl.dispose();
    super.dispose();
  }

  void _onChange() {} //lắng nghe sự thay đổi của textfield

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
                    controller: numberFieldCtrl,
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
                  ),
                ),
                Visibility(
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    visible: _pinValidate,
                    child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 24.0),
                          child: Text(
                              '\*Mã PIN không đúng. Vui lòng kiểm tra lại',
                              textAlign: TextAlign.center,
                              style:
                              TextStyle(color: Colors.red, fontSize: 12)),
                        )
                    )
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: InkWell(
                            child: Text(
                              'Quên mã PIN?',
                              style: TextStyle(
                                fontSize: 14,
                                  color: Color.fromRGBO(37, 110, 189, 1),
                                  fontWeight: FontWeight.w500),
                            ),
                            onTap: () => {})
                    ),
                  ),
                )
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
        actions: [
          FlatButton(
              onPressed: (){
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Container(
                        height: 239.0,
                        width: 366.0,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 44,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(208, 215, 226, 1),
                                          width: 1.0
                                      )
                                  )
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
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              margin: EdgeInsets.only(top: 60.0),
                              child: Column(
                                children: [
                                  Text(
                                      'Bạn có chắc chắn muốn từ chối yêu cầu ký hóa đơn này không?',
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(18, 35, 56, 1)
                                    ),
                                  ),
                                  SizedBox(height: 12.0,),
                                  Text(
                                    'Bằng cách nhấn vào xác nhận, bạn sẽ từ chối yêu cầu ký và không thể hoàn tác.',
                                    style: TextStyle(
                                        fontFamily: 'Gilroy',
                                        fontSize: 14.0,
                                        color: Color.fromRGBO(18, 35, 56, 1)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                              child: Align(
                                alignment: FractionalOffset.bottomCenter,
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 44,
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Xác nhận'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Gilroy'
                                      ),
                                    ),
                                    textColor: Colors.white,
                                    color: Color.fromRGBO(26, 65, 171, 1),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Color.fromRGBO(37, 110, 189, 1)),
                                        borderRadius: BorderRadius.circular(8)),
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
              child: Text('Từ chối', style: TextStyle(color: Color.fromRGBO(18, 35, 56, 1)))
          )
        ],
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
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: SizedBox(
                        width: double.infinity,
                        height: 44,
                        child: FlatButton(
                          onPressed: () {
                            this._onButtonShowModalSheet();
                          },
                          child: Text(
                            'Ký ngay'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textColor: Colors.white,
                          color: Color.fromRGBO(26, 65, 171, 1),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color.fromRGBO(37, 110, 189, 1)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
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