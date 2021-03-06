import 'package:flutter/material.dart';
import 'package:myApp/Screens/SignIn/components/connect_device.dart';
import 'package:myApp/Screens/Welcome/sign_up_screen.dart';
import 'package:myApp/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _nextPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ConnectDevice()),
      );
    }

    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_welcome.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo_welcome.png',
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16, left: 16, top: 36),
                    child: Text(
                      '\" Làm việc từ xa, không ngại khoảng cách \"'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(9, 30, 66, 1),
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 48),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: new FlatButton(
                        onPressed: _nextPage,
                        child: Text(
                          'Đăng nhập'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        textColor: textButtonColor,
                        color: buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: new FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        'Đăng ký'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      textColor: Color.fromRGBO(26, 65, 171, 1),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(26, 65, 171, 0.3),
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
