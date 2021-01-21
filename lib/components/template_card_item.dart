import 'package:flutter/cupertino.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:stoodi_ui/components/select_category.dart';

class TemplateCardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      height: 104.0,
      child: GestureDetector(
        onTap: () => {
          showCupertinoModalBottomSheet(
            // enableDrag: false,
            backgroundColor: Colors.transparent,
            topRadius: Radius.circular(20.0),
            context: context,
            builder: (context) => SelectCategoryDialog(),
          )
        },
        child: Card(
          color: Color(0xFF4ED0D0),
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10.0),
                            Text(
                              '암기하기',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                                letterSpacing: -0.2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10.0),
                            Text(
                              '‘워드마스터5000’, ‘공무원 국어 암기노트’ 등',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          MIcon.riBook2Fill,
                          size: 20.0,
                          color: Color(0xFFFFFFFF),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
