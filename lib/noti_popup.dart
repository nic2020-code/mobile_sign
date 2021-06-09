import 'package:flutter/material.dart';

class NotiPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 72,
            width: double.infinity,
            padding: EdgeInsets.all(12.0),
            color: Color.fromRGBO(82, 182, 64, 1),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  width: 16,
                  height: 16,
                  child: Icon(
                    Icons.done_rounded,
                    size: 10,
                    color: Color.fromRGBO(82, 182, 64, 1),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                ),
                Text(
                    'Ký hóa đơn thành công',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 72,
            width: double.infinity,
            padding: EdgeInsets.all(12.0),
            color: Color.fromRGBO(195, 54, 54, 1),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  width: 16,
                  height: 16,
                  child: Icon(
                    Icons.close_rounded,
                    size: 10,
                    color: Color.fromRGBO(195, 54, 54, 1),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                ),
                Text(
                  'Ký hóa đơn không thành công',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(248, 248, 248, 0.75),
                boxShadow: [
                  BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.15), spreadRadius: 1, blurRadius: 16),
                ],
              ),
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/icon_noti.png'),
                              ),
                            ),
                            width: 24,
                            height: 24,
                          ),
                          Text(
                            'MOBILE SIGN',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(99, 99, 99, 1)
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child: Text(
                          'now',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(0, 0, 0, 0.5)
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Yêu cầu ký mới',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Bạn nhận được yêu cầu ký văn bản VMI-NACENCOMM...',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
