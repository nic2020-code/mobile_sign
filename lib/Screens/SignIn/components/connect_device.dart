import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myApp/constants.dart';
import 'digital_certificate_validate.dart';

// class ConnectDeviceBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Container(
//           color: Colors.white,
//         ), // Required some widget in between to float AppBar

//         Positioned(
//           top: 40,
//           left: 16,
//           right: 16,
//           child: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.transparent,
//             leading: new IconButton(
//               icon: new Icon(Icons.arrow_back_ios_rounded),
//               color: Color.fromRGBO(9, 30, 66, 1),
//               highlightColor: Colors.transparent,
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//             primary: false,
//             actions: <Widget>[
//               Container(
//                   margin: const EdgeInsets.only(
//                       left: 16, top: 22, bottom: 16, right: 24),
//                   padding: const EdgeInsets.only(top: 3, right: 2),
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                         width: 1, color: Color.fromRGBO(17, 57, 125, 1)),
//                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                   ),
//                   child: Column(children: <Widget>[
//                     new LinearPercentIndicator(
//                       backgroundColor: Colors.transparent,
//                       width: 80.0,
//                       lineHeight: 10.0,
//                       percent: 0.25,
//                       progressColor: Color.fromRGBO(17, 57, 125, 1),
//                     ),
//                   ]))
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

class ConnectDevice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormConnectState();
  }
}

class _FormConnectState extends State<ConnectDevice>
    with WidgetsBindingObserver {
  // final _connectController = TextEditingController();
  TextEditingController textFieldCtrl;
  // FocusNode focusNode;
  bool _connectValidate = false;
  String _userCode;

  @override
  void initState() {
    textFieldCtrl = TextEditingController();
    // focusNode = FocusNode()..addListener(_rebuildOnFocusChange);
    super.initState();
  }

  void _validateButton() {
    setState(() {
      textFieldCtrl.text.isEmpty || textFieldCtrl.text.length < 6
          ? _connectValidate = true
          : Navigator.push(context,
              MaterialPageRoute(builder: (context) => DigitalCertificate()));
    });
  }

  void _textChange(text) {
    setState(() {
      _userCode = text;
      _connectValidate = false;
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
      title: "Connect Device",
      home: Scaffold(
          body: SafeArea(
              minimum: const EdgeInsets.only(top: 40),
              child: Container(
                child: Column(
                  children: <Widget>[
                    //Appbar
                    appBar(context, 0.25),
                    SizedBox(height: 38),

                    //Connect device form
                    Flexible(
                        child: Container(
                      padding: containerPadding,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            headingTitle(
                                title: 'Kết nối thiết bị',
                                subtitle:
                                    'Chúng tôi đã gửi mã kết nối đến địa chỉ Email của bạn. Vui lòng kiểm tra và kết nối'),
                            TextField(
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp("[a-z0-9]"))
                              ],
                              maxLength: 6,
                              autofocus: true,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(17, 57, 125, 1))),
                                labelText: 'Nhập mã kết nối',
                                errorText: _connectValidate
                                    ? '\* Mã kết nối chưa chính xác\. Vui lòng thử lại'
                                    : null,
                                labelStyle: TextStyle(
                                    fontFamily: kPrimaryFontFamily,
                                    color: Color.fromRGBO(193, 199, 208, 1)),
                              ),
                              controller: textFieldCtrl,
                              // focusNode: focusNode,
                              onChanged: _textChange,
                            ),
                            SizedBox(
                              height: 48,
                            ),

                            //Button
                            SizedBox(
                              width: double.infinity,
                              height: 44,
                              child: new FlatButton(
                                onPressed: _validateButton,
                                child: Text(
                                  'Kết nối'.toUpperCase(),
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
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ))),
      debugShowCheckedModeBanner: false,
    );
  }
}
