import 'package:flutter/cupertino.dart';

class RequestData {
  final int id;
  final String image;
  final String requestName;
  final String fileName;
  final String requestDate;
  int requestState;

  RequestData(this.id, this.image, this.requestName, this.fileName, this.requestDate, this.requestState);
}

class NotificationData {
  final int id;
  final IconData icon;
  final String notiTitle;
  final String notiSubtitle;

  NotificationData(this.id, this.icon, this.notiTitle, this.notiSubtitle);
}
