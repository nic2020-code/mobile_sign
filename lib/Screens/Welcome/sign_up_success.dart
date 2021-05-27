import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myApp/Screens/Welcome/welcome_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 56.0),
                        child: Text(
                          'Gửi yêu cầu thành công!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color.fromRGBO(9, 30, 66, 1)
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 16.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Chúng tôi đã nhận được yêu cầu tư vấn sản phẩm. Hỗ trợ sẽ sớm liên lạc với bạn qua số',
                                style: TextStyle(
                                    height: 1.6,
                                    fontSize: 16,
                                    color: Color.fromRGBO(80, 95, 121, 1)
                                ),
                              ),
                              TextSpan(
                                text: ' 096****225',
                                style: TextStyle(
                                    height: 1.6,
                                    fontSize: 16,
                                    color: Color.fromRGBO(26, 65, 171, 1)
                                ),
                              )
                            ]
                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 52.0, bottom: 64.0),
                    width: 266,
                    height: 266,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            'assets/images/sign_up_success.png'),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 32.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Truy cập website',
                                style: TextStyle(
                                    height: 1.6,
                                    fontSize: 14,
                                    color: Color.fromRGBO(80, 95, 121, 1)
                                ),
                              ),
                              TextSpan(
                                text: ' https://www.mobilesign.vn ',
                                style: TextStyle(
                                    height: 1.6,
                                    fontSize: 14,
                                    color: Color.fromRGBO(26, 65, 171, 1),
                                    fontWeight: FontWeight.w500
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    final url = 'https://www.mobilesign.vn';
                                    if (await canLaunch(url)) {
                                      await launch(
                                        url,
                                        forceSafariVC: false,
                                      );
                                    }
                                  },
                              ),
                              TextSpan(
                                text: 'để cập nhập thêm nhiều thông tin về sản phẩm',
                                style: TextStyle(
                                    height: 1.6,
                                    fontSize: 14,
                                    color: Color.fromRGBO(80, 95, 121, 1)
                                ),
                              )
                            ]
                        ),
                      )
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: new FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WelcomeScreen()));
                      },
                      child: Text(
                        'Trang chủ'.toUpperCase(),
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
          ],
        ),
      )
    );
  }
}
