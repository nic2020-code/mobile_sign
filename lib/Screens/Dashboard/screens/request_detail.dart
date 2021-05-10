import 'package:flutter/material.dart';

class RequestDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RequestState();
}

class RequestState extends State<RequestDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Color.fromRGBO(18, 35, 56, 1)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Yêu cầu ký văn bản",
          style: TextStyle(
              color: Color.fromRGBO(18, 35, 56, 1),
            fontSize: 18
          ),
        ),
        actions: [
          FlatButton(
              onPressed: (){},
              child: Text('Từ chối', style: TextStyle(color: Color.fromRGBO(18, 35, 56, 1)))
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            UnconstrainedBox(
              child: LimitedBox(
                maxWidth: 100,
                child: Container(
                  height: 74,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                          'assets/images/edoc_logo.png'),
                    ),
                  ),
                  width: double.infinity,
                ),
              ),
            ),
            // Center(
            //   child: Container(
            //     width: 200,
            //     height: 74,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         fit: BoxFit.contain,
            //         image: AssetImage(
            //             'assets/images/edoc_logo.png'),
            //       ),
            //     ),
            //   ),
            // ),
            Text('body')
          ],
        )
      ),
    );
  }
}