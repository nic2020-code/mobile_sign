import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class SignInConnected extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormConnectedState();
  }
}

class _FormConnectedState extends State<SignInConnected>
    with WidgetsBindingObserver {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();
  // final _connectController = TextEditingController();
  TextEditingController textFieldCtrl;
  // FocusNode focusNode;
  // bool _connectValidate = false;

  // String _connect;
  @override
  void initState() {
    // textFieldCtrl = TextEditingController();
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
      title: "Sign In Connected",
      home: Scaffold(
        backgroundColor: Color.fromRGBO(17, 57, 125, 1),
        key: _scaffoldKey,
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              Text(
                'Welcome back!',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                'Vui lòng nhập mã PIN để đăng nhập',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Gilroy', fontSize: 14.0),
              ),
              TextField(),
            ],
          ),
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
