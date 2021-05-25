import 'package:flutter/material.dart';
import 'package:myApp/Screens/Dashboard/request_data.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:myApp/Screens/Dashboard/screens/notification_detail.dart';

final List<NotificationData> notificationData = [
  NotificationData(
    1,
    Icons.mail,
    'Ngồi nhà thành thơi, ký mọi giấy tờ',
    'Nhằm đáp ứng theo xu thế 4.0 và nhu cầu',
  ),
  NotificationData(
    2,
    Icons.priority_high_outlined,
    'Chứng thư số của bạn sắp hết hạn',
    'Chứng thư số của bạn sẽ hết hạn vào ngày',
  )
];

Widget buildNotiCard(BuildContext context, int index) {
  return Slidable(
    secondaryActions: <Widget>[
      IconSlideAction(
          icon: Icons.remove_red_eye,
          color: Color.fromRGBO(13, 86, 209, 1),
          caption: 'Xem',
          closeOnTap: false, //list will not close on tap
          onTap: () {
            print("Xem is Clicked");
          }
      ),
      IconSlideAction(
          icon: Icons.delete_rounded,
          color: Color.fromRGBO(191, 38, 0, 1),
          caption: 'Xoá',
          closeOnTap: false, //list will not close on tap
          onTap: () {
            print("Xoá is Clicked");
          }
      )
    ],
    child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide( //
              color: Color.fromRGBO(151, 160, 175, 1),
              width: 1.0,
            ),
          ),
        ),
        child: Card(
            elevation: 0,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NotificationDetail(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(1, 56, 166, 1),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Icon(
                          notificationData[index].icon,
                          color: Colors.white,
                          size: 14,
                        ),
                        width: 24,
                        height: 24,
                      ),
                      Flexible(
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  notificationData[index].notiTitle,
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
                                  notificationData[index].notiSubtitle,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(151, 160, 175, 1)),
                                ),
                              ],
                            ),
                          )),
                      Container(
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 16,
                          color: Color.fromRGBO(151, 160, 175, 1),
                        ),
                      )
                    ]),
              ),
            ))),
    actionPane: SlidableDrawerActionPane(),
  );
}