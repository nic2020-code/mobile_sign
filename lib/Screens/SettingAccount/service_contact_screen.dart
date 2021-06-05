import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,
              color: Color.fromRGBO(18, 35, 56, 1)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}

class CustomerService extends StatefulWidget {
  @override
  _CustomerServiceState createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,
              color: Color.fromRGBO(18, 35, 56, 1)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}

class NewPlan extends StatefulWidget {
  @override
  _NewPlanState createState() => _NewPlanState();
}

class _NewPlanState extends State<NewPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,
              color: Color.fromRGBO(18, 35, 56, 1)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}