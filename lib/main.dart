import 'package:flutter/cupertino.dart' hide CupertinoSliverNavigationBar;
import 'package:flutter/material.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';
import 'package:stoodi_ui/nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double _offset = 0;
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _offset = double.parse(_controller.offset.toString());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF4F5F6),
        body: CustomScrollView(
          controller: _controller,
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              border: null,
              backgroundColor: Color(0xFFF4F5F6),
              leading: CupertinoButton(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0, 0, 5.0),
                  child: Icon(
                    MIcon.riMenu4Line,
                    size: 28.0,
                  ),
                  onPressed: () {}),
              trailing: CupertinoButton(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5.0, 5.0),
                child: Icon(
                  MIcon.riAddLine,
                  size: 28.0,
                ),
                onPressed: () {},
              ),
              middle: AnimatedOpacity(
                opacity: _offset >= 45 ? 1.0 : 0.0,
                duration: Duration(milliseconds: 200),
                child: Text(
                  '12월 29일 화요일',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    letterSpacing: -0.4,
                    fontSize: 16.0,
                  ),
                ),
              ),
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              largeTitle: Container(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 10.0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            "오늘",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            '12월 29일 화요일',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              letterSpacing: -0.4,
                              fontSize: 18.0,
                            ),
                          )
                        ],
                      )),
                      // _controller.offset >= 50 ? SizedBox.shrink() : Expanded(
                      //     child: Text(
                      //   'D-398',
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.normal, fontSize: 12.0),
                      // ))
                    ],
                  )),
              actionsForegroundColor: Colors.black,
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                  height: 215.0,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/Rectangle.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0, top: 28.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "공부시간",
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(0.8),
                                      fontSize: 13.0),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "02:05:59",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 24.0),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  "진행률",
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(0.8),
                                      fontSize: 13.0),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "99%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 24.0),
                                ),
                              ]),
                        )),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  )),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 10.0,
                  ),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                  PlanItem(),
                ],
              ),
            ),
          ],
        ));
  }
}

class PlanItem extends StatelessWidget {
  // final StoodiColos = [Color(0xFFB176E9)];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      height: 100.0,
      child: Card(
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(22.0, 0.0, 15.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: <Widget>[
                          Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFffc659),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            '2021 자이스토리 수학Ⅱ 6문제씩!',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF1A1A1E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 27.0),
                          Icon(
                            MIcon.riCheckLine,
                            size: 14.0,
                            color: Color(0xFF1A1A1E),
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            '2/3',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF1A1A1E),
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Icon(
                            MIcon.riTimeLine,
                            size: 14.0,
                            color: Color(0xFF1A1A1E),
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            '00:00:00',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF1A1A1E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '99%',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF3C3C43),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF9BA0BF).withOpacity(0.28),

                        ),
                        width: 50.0,
                        height: 7.0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            // borderRadius: BorderRadius.only(
                            //     topRight: Radius.circular(10.0),
                            //     bottomRight: Radius.circular(10.0)),
                          color: Color(0xFF3C3C43),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
