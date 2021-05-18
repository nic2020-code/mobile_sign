import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myApp/constants.dart';
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
  // final _connectController = TextEditingController();
  TextEditingController numberFieldCtrl;
  // FocusNode focusNode;
  bool _otpValidate = false;
  String _inputOTP;

  // String _connect;
  @override
  void initState() {
    numberFieldCtrl = TextEditingController();
    // focusNode = FocusNode()..addListener(_rebuildOnFocusChange);
    super.initState();
  }

  void _otpChange(text) {
    setState(() {
      _inputOTP = text;
      _otpValidate = false;
    });
  }

  void _otpButton() {
    setState(() {
      numberFieldCtrl.text.isEmpty || numberFieldCtrl.text.length < 4
          ? _otpValidate = true
          // : _otpValidate = false;
          : Navigator.push(
              context, MaterialPageRoute(builder: (context) => OTPSuccess()));
    });
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
          body: SafeArea(
              minimum: const EdgeInsets.only(top: 40),
              child: Container(
                child: Column(
                  children: <Widget>[
                    //Appbar
                    appBar(context, 0.75),
                    SizedBox(height: 38),
                    Flexible(
                        child: Container(
                      padding: containerPadding,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            headingTitle(
                                title: 'Xác thực thiết bị',
                                subtitle:
                                    'Vui lòng nhập mã xác thực thiết bị để tiếp tục'),
                            TextField(
                                style:
                                    TextStyle(fontSize: 32, letterSpacing: 16),
                                keyboardType: TextInputType.numberWithOptions(),
                                textInputAction: TextInputAction.done,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                maxLength: 4,
                                autofocus: true,
                                decoration: InputDecoration(
                                  counterText: "",
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(17, 57, 125, 1))),
                                  // labelText: 'Nhập mã OTP',
                                  errorText: _otpValidate
                                      ? '\* Mã OTP chưa chính xác\. Vui lòng thử lại'
                                      : null,
                                  labelStyle: TextStyle(
                                      fontFamily: kPrimaryFontFamily,
                                      color: Color.fromRGBO(193, 199, 208, 1)),
                                ),
                                controller: numberFieldCtrl,
                                // focusNode: focusNode,
                                onChanged: _otpChange),
                            SizedBox(
                              height: 56,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 44,
                              child: new FlatButton(
                                onPressed: _otpButton,
                                child: Text(
                                  'Xác nhận'.toUpperCase(),
                                  style: TextStyle(
                                    fontFamily: kPrimaryFontFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                textColor: textButtonColor,
                                color: buttonColor,
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
                                    child: Text(
                                      'Gửi lại mã',
                                      style: TextStyle(
                                          color: Color.fromRGBO(52, 69, 99, 1),
                                          fontFamily: kPrimaryFontFamily,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    onTap: () => {})
                              ],
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ))),
      debugShowCheckedModeBanner: false,
    );
  }
}
