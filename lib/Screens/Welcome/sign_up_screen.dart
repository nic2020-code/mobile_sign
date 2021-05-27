import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myApp/Screens/Welcome/sign_up_success.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    TextEditingController numberFieldCtrl1;
    TextEditingController numberFieldCtrl2;
    bool _pinValidate = false;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Color.fromRGBO(18, 35, 56, 1)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Đăng ký dịch vụ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Color.fromRGBO(9, 30, 66, 1)
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 14.0, bottom: 48.0),
                  child: Text(
                      'Để biết thêm thông tin về sản phẩm và đăng ký sử dụng dịch vụ, vui lòng điền thông tin vào mẫu.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.6,
                      fontSize: 16,
                      color: Color.fromRGBO(80, 95, 121, 1)
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                      'Họ và tên',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(9, 30, 66, 1)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(183, 192, 204, 1), //                   <--- border color
                        width: 1.0,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Nhập họ và tên',
                      hintStyle: TextStyle(fontSize: 14.0, color: Color.fromRGBO(183, 192, 204, 1)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      // errorText: _pinValidate
                      //     ? '\* Mã PIN chưa chính xác\. Vui lòng nhập lại'
                      //     : null,
                    ),
                    controller: numberFieldCtrl1,
                    // focusNode: focusNode,
                    onChanged: (text) {
                      setState(() {
                        _pinValidate = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Số điện thoại',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(9, 30, 66, 1)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(183, 192, 204, 1), //                   <--- border color
                        width: 1.0,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: 'Nhập số điện thoại',
                      hintStyle: TextStyle(fontSize: 14.0, color: Color.fromRGBO(183, 192, 204, 1)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      // errorText: _pinValidate
                      //     ? '\* Mã PIN chưa chính xác\. Vui lòng nhập lại'
                      //     : '',
                    ),
                    controller: numberFieldCtrl2,
                    // focusNode: focusNode,
                    onChanged: (text) {
                      setState(() {
                        _pinValidate = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: new FlatButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SignUpSuccess()));
                      });
                    },
                    child: Text(
                      'Đăng ký tư vấn'.toUpperCase(),
                      style: TextStyle(
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
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 124,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/images/bottom_signup.png'),
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
