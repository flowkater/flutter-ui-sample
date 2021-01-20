import 'package:flutter/cupertino.dart' hide CupertinoSliverNavigationBar;
import 'package:flutter/material.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';
import 'package:stoodi_ui/page/today.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
          icon: Icon(MIcon.riFileList2Line),
          activeIcon: Icon(MIcon.riFileList2Fill)),
      BottomNavigationBarItem(
          icon: Icon(MIcon.riCalendarLine),
          activeIcon: Icon(MIcon.riCalendarFill)),
      BottomNavigationBarItem(
          icon: Icon(MIcon.riSettingsLine),
          activeIcon: Icon(MIcon.riSettingsFill))
    ];

    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: items,
          iconSize: 24.0,
          activeColor: Color(0xFF1A1A1E),
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return TodayPage();
            case 1:
              return SecondWidget();
            case 2:
              return ThirdWidget();
            default:
              return TodayPage();
          }
        });
  }
}

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child: Text("캘린더"));
  }
}

class ThirdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child: Text("설정"));
  }
}
