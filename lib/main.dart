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
        backgroundColor: Colors.white,
        body: CustomScrollView(
          controller: _controller,
          slivers: [
            CupertinoSliverNavigationBar(
              leading: CupertinoButton(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0, 0, 5.0),
                child: Icon(MIcon.riMenu4Line, size: 28.0,),
                onPressed: () {}
              ),
              trailing: CupertinoButton(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5.0, 5.0),
                child: Icon(MIcon.riAddLine, size: 28.0,),
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
            SliverList(
              delegate: SliverChildBuilderDelegate((_, i) {
                return ListTile(title: Text("Item ${i}"));
              }, childCount: 20),
            ),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //       (context, index) => ValueListenableBuilder(
            //         valueListenable: viewModel.plans,
            //         builder: (context, plans, child) {
            //           return PlanList(
            //             plans: plans,
            //           );
            //         }),
            //       childCount: viewModel.plans.value?.length),
            // ),
          ],
        ));
  }
}
