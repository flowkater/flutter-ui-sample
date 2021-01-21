import 'package:flutter/cupertino.dart' hide CupertinoSliverNavigationBar;
import 'package:flutter/material.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';
import 'package:stoodi_ui/components/add_plan.dart';
import 'package:stoodi_ui/components/nav_bar.dart';
import 'package:stoodi_ui/components/plan_item.dart';

class TodayPage extends StatefulWidget {
  @override
  _TodayPageState createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
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
    return CupertinoPageScaffold(
        backgroundColor: Color(0xFFF4F5F6),
        child: CustomScrollView(
          controller: _controller,
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              border: null,
              backgroundColor: _offset >= 45 ? Color(0xCCF4F5F6) : Color(0xFFF4F5F6),
              // backgroundColor: Color(0xFFF4F5F6),
              leading: CupertinoButton(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0, 0, 5.0),
                  child: Icon(
                    MIcon.riMenu4Line,
                    size: 24.0,
                  ),
                  onPressed: () {}),
              trailing: CupertinoButton(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5.0, 5.0),
                child: Icon(
                  MIcon.riAddLine,
                  size: 24.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => AddPlan(),
                      fullscreenDialog: true,
                    ),
                  );
                },
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
                    elevation: 0.0,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/Rectangle.png",
                            ),
                            fit: BoxFit.cover,
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
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 8),
              sliver: SliverList(
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
            ),
          ],
        ));
  }
}
