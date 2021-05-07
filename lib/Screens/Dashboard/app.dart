import 'package:flutter/material.dart';
import 'package:myApp/Screens/Dashboard/tabItem.dart';
import 'package:myApp/Screens/Dashboard/bottomNavigation.dart';
import 'package:myApp/Screens/Dashboard/screens.dart';
import 'package:myApp/app_icons.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  // this is static property so other widget throughout the app
  // can access it simply by AppState.currentTab
  static int currentTab = 0;

  // list tabs here
  final List<TabItem> tabs = [
    TabItem(
      tabName: "Home",
      icon: MyFlutterApp.home_icon,
      page: HomeScreen(),
    ),
    TabItem(
      tabName: "Lịch sử",
      icon: MyFlutterApp.history_icon,
      page: HistoryScreen(),
    ),
    TabItem(
      tabName: "QR Code",
      icon: MyFlutterApp.qr_code,
      page: QRScreen(),
    ),
    TabItem(
      tabName: "Thông báo",
      icon: MyFlutterApp.noti_icon,
      page: NotificationScreen(),
    ),
    TabItem(
      tabName: "Tài khoản",
      icon: MyFlutterApp.user_icon,
      page: AccountScreen(),
    ),
  ];

  AppState() {
    // indexing is necessary for proper funcationality
    // of determining which tab is active
    tabs.asMap().forEach((index, details) {
      details.setIndex(index);
    });
  }

  // sets current tab index
  // and update state
  void _selectTab(int index) {
    if (index == currentTab) {
      // pop to first route
      // if the user taps on the active tab
      tabs[index].key.currentState.popUntil((route) => route.isFirst);
    } else {
      // update the state
      // in order to repaint
      setState(() => currentTab = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    // WillPopScope handle android back btn
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
        !await tabs[currentTab].key.currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (currentTab != 0) {
            // select 'main' tab
            _selectTab(0);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      // this is the base scaffold
      // don't put appbar in here otherwise you might end up
      // with multiple appbars on one screen
      // eventually breaking the app
      child: Scaffold(
        // indexed stack shows only one child
        backgroundColor: Color.fromRGBO(247, 248, 252, 1),
        body: IndexedStack(
          index: currentTab,
          children: tabs.map((e) => e.page).toList(),
        ),
        // Bottom navigation
        bottomNavigationBar: BottomNavigation(
          onSelectTab: _selectTab,
          tabs: tabs,
        ),
      ),
    );
  }
}