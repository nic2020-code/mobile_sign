import 'dart:ui';

import 'package:flutter/material.dart';

class NotificationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final mq = MediaQueryData.fromWindow(window);

    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 57, 125, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Thông báo',
          style: TextStyle(
            // fontFamily: 'Gilroy',
              fontSize: 18.0,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              iconSize: 20,
              icon: Icon(Icons.delete_rounded, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
            height: mq.size.height,
          ),
          child: Container(
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 9.0),
                  child: Text(
                      'Ngày 22/09/2020 14:15',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(9, 30, 66, 1)
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 24.0, right: 24.0, left: 24.0),
                      width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Ngồi nhà thảnh thơi, ký mọi giấy tờ.',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(9, 30, 66, 1),
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.0, bottom: 22.0),
                              width: double.infinity,
                              height: 175,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/images/tintuc_image.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Bộ Thông tin và Truyền thông đã chính thức ban hành Thông tư 16/2019/TT-BTTTT quy định danh mục tiêu chuẩn bắt buộc áp dụng về chữ ký số và dịch vụ chứng thực chữ ký số theo mô hình ký số trên thiết bị di động và ký số từ xa.',
                              style: TextStyle(
                                height: 1.5,
                                  fontSize: 12,
                                  color: Color.fromRGBO(88, 88, 88, 1),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 16.0, bottom: 24.0),
                              child: Text(
                                'Thời hạn thi hành trong Thông tư 16/2019/TT-BTTTT.',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(9, 30, 66, 1),
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            Text(
                              'Theo khoản 1, điều 4 của Thông tư 16/2019/TT-BTTTT thì kể từ ngày 1/4/2020 Thông tư này sẽ có hiệu lực thi hành. Như vậy, hiện tại thì việc cung cấp và sử dụng chữ ký số từ xa trên thiết bị di động đã được phép áp dụng rộng rãi.',
                              style: TextStyle(
                                height: 1.5,
                                fontSize: 12,
                                color: Color.fromRGBO(88, 88, 88, 1),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              'Bao gồm:\n✔Tổ chức cung cấp dịch vụ chứng thực chữ ký số công cộng\n✔Tổ chức cung cấp dịch vụ hứng thực chữ ký số chuyên dùng của cơ quan\n✔Tổ chức được cấp giấy chứng nhận đủ điều kiện đảm bảo an toàn cho chữ ký số chuyên dùng\n✔Tổ chức cung cấp dịch vụ chứng thực chữ ký số nước ngoài có chứng thư số',
                              style: TextStyle(
                                height: 1.5,
                                fontSize: 12,
                                color: Color.fromRGBO(88, 88, 88, 1),
                              ),
                            )
                          ],
                        ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
