import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/services.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:myApp/Screens/SignIn/OTP_success.dart';

class OTPAuthentication extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormOTPState();
  }
}

class _FormOTPState extends State<OTPAuthentication>
    with WidgetsBindingObserver {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();
  // final _connectController = TextEditingController();
  TextEditingController numberFieldCtrl;
  // FocusNode focusNode;
  bool _otpValidate = false;

  // String _connect;
  @override
  void initState() {
    numberFieldCtrl = TextEditingController();
    // focusNode = FocusNode()..addListener(_rebuildOnFocusChange);
    super.initState();
  }

  // void _rebuildOnFocusChange() => setState(() {});

  // void _onButtonPressed() {}

  // void dispose() {
  //   _connectController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OTP Authentication",
      home: Scaffold(
          backgroundColor: Colors.white,
          key: _scaffoldKey,
          body: SafeArea(
              minimum: const EdgeInsets.only(top: 40, left: 16, right: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        leading: new IconButton(
                          icon: new Icon(Icons.arrow_back_ios_rounded),
                          color: Color.fromRGBO(9, 30, 66, 1),
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        primary: false,
                        actions: <Widget>[
                          Container(
                              margin:
                                  const EdgeInsets.only(top: 22, bottom: 16),
                              padding:
                                  const EdgeInsets.only(top: 3.4, right: 2),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromRGBO(17, 57, 125, 1)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Column(children: <Widget>[
                                new LinearPercentIndicator(
                                  backgroundColor: Colors.transparent,
                                  width: 80.0,
                                  lineHeight: 10.0,
                                  percent: 0.75,
                                  progressColor: Color.fromRGBO(17, 57, 125, 1),
                                ),
                              ]))
                        ],
                      ),
                    ),
                    SizedBox(height: 38),
                    Text(
                      'Xác thực OTP',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                        color: Color.fromRGBO(9, 30, 66, 1),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Vui lòng nhập mã OTP để tiếp tục thao tác',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Gilroy',
                          height: 1.4,
                          color: Color.fromRGBO(80, 95, 121, 1)),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      style: TextStyle(fontSize: 32, letterSpacing: 16),
                      keyboardType: TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.done,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      maxLength: 4,
                      autofocus: true,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(17, 57, 125, 1))),
                        // labelText: 'Nhập mã OTP',
                        errorText: _otpValidate
                            ? '\* Mã OTP chưa chính xác\. Vui lòng thử lại'
                            : null,
                        labelStyle: TextStyle(
                            fontFamily: 'Gilroy',
                            color: Color.fromRGBO(193, 199, 208, 1)),
                      ),
                      controller: numberFieldCtrl,
                      // focusNode: focusNode,
                      // onChanged: (text) {
                      //   setState(() {
                      //     _connect = text;
                      //   });
                      // },
                    ),
                    SizedBox(
                      height: 56,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: new FlatButton(
                        onPressed: () {
                          setState(() {
                            numberFieldCtrl.text.isEmpty ||
                                    numberFieldCtrl.text.length < 4
                                ? _otpValidate = true
                                // : _otpValidate = false;
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OTPSuccess()));
                          });
                        },
                        child: Text(
                          'Xác nhận'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        textColor: Colors.white,
                        color: Color.fromRGBO(17, 57, 125, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            child: new Text(
                              'Gửi lại mã OTP',
                              style: new TextStyle(
                                  color: Color.fromRGBO(52, 69, 99, 1),
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600),
                            ),
                            onTap: () => {})
                      ],
                    ),
                  ],
                ),
              ))),
      debugShowCheckedModeBanner: false,
    );
  }
}
