import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myApp/Screens/SettingAccount/screens/new_PIN_form.dart';

class ChangePINForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChangePINFormState();
  }
}

class _ChangePINFormState extends State<ChangePINForm> with WidgetsBindingObserver {
  // final _connectController = TextEditingController();
  TextEditingController numberFieldCtrl1;
  TextEditingController numberFieldCtrl2;
  final focus = FocusNode();
  bool _pinValidate = false;
  String _numberValidate1;
  bool _obscureText1 = true;

  void _toggle1() {
    setState(() {
      _obscureText1 = !_obscureText1;
    });
  }

  @override
  void initState() {
    numberFieldCtrl1 = TextEditingController();
    numberFieldCtrl2 = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Current Password",
      home: Scaffold(
          resizeToAvoidBottomInset: false, // this is new
          resizeToAvoidBottomPadding: false, // this is new
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_outlined, color: Color.fromRGBO(18, 35, 56, 1)),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: SingleChildScrollView(
                    reverse: true, // this is new
                    physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        'Nhập mã PIN hiện tại',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(9, 30, 66, 1),
                        ),
                      ),
                      SizedBox(height: 32),
                      TextField(
                        obscureText: _obscureText1,
                        keyboardType: TextInputType.numberWithOptions(),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        maxLength: 6,
                        autofocus: true,
                        decoration: InputDecoration(
                          counterText: "",
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
                          labelText: 'Nhập mã PIN hiện tại',
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
                            _pinValidate = false;
                          });
                        },
                      ),
                      Padding( // this is new
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)
                      ),
                    ],
                  )
                ),
              ),
              Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 28.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 44,
                        child: new FlatButton(
                          onPressed: () {
                            setState(() {
                              numberFieldCtrl1.text.isEmpty ||
                                  numberFieldCtrl1
                                      .text.length <
                                      6
                                  ? _pinValidate = true
                                  : Navigator.of(context).push(
                                        MaterialPageRoute(
                                        builder: (context) => NewPINForm(),
                                      ),
                                    );
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
                    )
                  )
              )
            ],
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
