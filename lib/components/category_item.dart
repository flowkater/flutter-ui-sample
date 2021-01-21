import 'package:flutter/cupertino.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      // height: 54.0,
      // color: Colors.amber,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              // padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 6.0, right: 3.0),
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFffc659),
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            '부동산학개론',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF1A1A1E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    child: Icon(MIcon.riCheckLine),
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
