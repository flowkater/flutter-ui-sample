import 'package:flutter/cupertino.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';
import 'package:flutter/material.dart';

class PlanItem extends StatelessWidget {

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
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
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
                          SizedBox(width: 10.0),
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
                          SizedBox(width: 20.0),
                          Icon(
                            MIcon.riCheckLine,
                            size: 14.0,
                            color: Color(0xFF3C3C43),
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            '2/3',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF3C3C43),
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Icon(
                            MIcon.riTimeLine,
                            size: 14.0,
                            color: Color(0xFF3C3C43),
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            '00:00:00',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF3C3C43),
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
