import 'package:flutter/material.dart';
import 'package:myApp/Screens/Dashboard/screens/request_detail.dart';
import 'package:myApp/Screens/Dashboard/request_data.dart';
import 'package:myApp/Screens/Dashboard/screens/history_detail.dart';

final List<RequestData> requestData = [
  RequestData(
      1,
      'assets/images/edoc_request.png',
      'Yêu cầu ký văn bản từ Nguyễn Văn Khanh',
      'VMI-NACENCOMM 13.7.20.doc',
      '5 giờ trước',
      0),
  RequestData(
      2,
      'assets/images/einvoice_request.png',
      'Yêu cầu đăng nhập từ Ca2-Einvoice',
      'Device PC-DE5Z 009',
      '2 giờ trước',
      1)
];

Widget buildRequestCard(BuildContext context, int index) {
  return Container(
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 2,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RequestDetail(),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(requestData[index].image),
                        ),
                      ),
                      width: 30,
                      height: 30,
                    ),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            requestData[index].requestName,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(9, 30, 66, 1)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            requestData[index].fileName,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(107, 119, 140, 1)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            requestData[index].requestDate,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(183, 192, 204, 1)),
                          )
                        ],
                      ),
                    ))
                  ]),
            ),
          )));
}

Widget buildHistoryCard(BuildContext context, int index) {
  return Container(
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 2,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HistoryDetail(),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(requestData[index].image),
                        ),
                      ),
                      width: 30,
                      height: 30,
                    ),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            requestData[index].requestName,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(9, 30, 66, 1)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            requestData[index].fileName,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(107, 119, 140, 1)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                requestData[index].requestDate,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(183, 192, 204, 1)),
                              ),
                              Text(
                                '${requestData[index].requestState == 1 ? 'Thành công' : 'Không thành công'}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: requestData[index].requestState == 1
                                        ? Colors.green
                                        : Colors.red),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
                  ]),
            ),
          )));
}
