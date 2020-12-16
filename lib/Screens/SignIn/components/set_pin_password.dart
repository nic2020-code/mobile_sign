import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myApp/Screens/SignIn/sign_in_success.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SetPINPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SetPINState();
  }
}

class _SetPINState extends State<SetPINPassword> with WidgetsBindingObserver {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();
  // final _connectController = TextEditingController();
  TextEditingController numberFieldCtrl1;
  TextEditingController numberFieldCtrl2;
  // FocusNode focusNode;
  bool _pinValidate = false;
  String _numberValidate1;
  String _numberValidate2;

  bool _obscureText1 = true;
  bool _obscureText2 = true;

  void _toggle1() {
    setState(() {
      _obscureText1 = !_obscureText1;
    });
  }

  void _toggle2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

  // String _connect;
  @override
  void initState() {
    numberFieldCtrl1 = TextEditingController();
    numberFieldCtrl2 = TextEditingController();
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
                                  percent: 1,
                                  progressColor: Color.fromRGBO(17, 57, 125, 1),
                                ),
                              ]))
                        ],
                      ),
                    ),
                    SizedBox(height: 38),
                    Text(
                      'Thiết lập mã PIN',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                        color: Color.fromRGBO(9, 30, 66, 1),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Mã PIN này sẽ được sử dụng để xác thực khi bạn đăng nhập vào Mobile Sign.',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Gilroy',
                          height: 1.4,
                          color: Color.fromRGBO(80, 95, 121, 1)),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      obscureText: _obscureText1,
                      keyboardType: TextInputType.numberWithOptions(),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      maxLength: 6,
                      autofocus: true,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: _toggle1,
                            child: Icon(
                              _obscureText1
                                  ? FontAwesomeIcons.eye
                                  : FontAwesomeIcons.eyeSlash,
                              size: 15.0,
                              color: Colors.grey,
                            )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(17, 57, 125, 1))),
                        labelText: 'Nhập mã PIN',
                        errorText: _pinValidate
                            ? '\* Mã PIN chưa chính xác\. Vui lòng nhập lại'
                            : null,
                        labelStyle: TextStyle(
                            fontFamily: 'Gilroy',
                            color: Color.fromRGBO(193, 199, 208, 1)),
                      ),
                      controller: numberFieldCtrl1,
                      // focusNode: focusNode,
                      onChanged: (text) {
                        setState(() {
                          _numberValidate1 = text;
                        });
                      },
                    ),
                    TextField(
                      obscureText: _obscureText2,
                      keyboardType: TextInputType.numberWithOptions(),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      maxLength: 6,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: _toggle2,
                            child: Icon(
                              _obscureText2
                                  ? FontAwesomeIcons.eye
                                  : FontAwesomeIcons.eyeSlash,
                              size: 15.0,
                              color: Colors.grey,
                            )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(17, 57, 125, 1))),
                        labelText: 'Nhập lại mã PIN',
                        errorText: _pinValidate
                            ? '\* Mã PIN chưa chính xác\. Vui lòng nhập lại'
                            : null,
                        labelStyle: TextStyle(
                            fontFamily: 'Gilroy',
                            color: Color.fromRGBO(193, 199, 208, 1)),
                      ),
                      controller: numberFieldCtrl2,
                      // focusNode: focusNode,
                      onChanged: (text) {
                        setState(() {
                          _numberValidate2 = text;
                        });
                      },
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
                            numberFieldCtrl2.text.isEmpty &
                                        numberFieldCtrl1.text.isEmpty ||
                                    numberFieldCtrl2.text.length &
                                            numberFieldCtrl1.text.length <
                                        6 ||
                                    _numberValidate1 != _numberValidate2
                                ? _pinValidate = true
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInSuccess()));
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
                    )
                  ],
                ),
              ))),
      debugShowCheckedModeBanner: false,
    );
  }
}
