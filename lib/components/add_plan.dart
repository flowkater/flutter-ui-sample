import 'package:flutter/cupertino.dart' hide CupertinoSliverNavigationBar;
import 'package:flutter/material.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';
import 'package:stoodi_ui/components/nav_bar.dart';
import 'package:stoodi_ui/components/template_card_item.dart';

class AddPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF4F5F6),
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            actionsForegroundColor: Colors.black,
            border: null,
            backgroundColor: Color(0xCCF4F5F6),
            // middle: Text("플랜 추가하기"),
            largeTitle: Text("플랜 추가하기"),
            leading: CupertinoButton(
                padding: EdgeInsets.all(0.0),
                child: Icon(
                  MIcon.riCloseLine,
                  size: 24.0,
                ),
                onPressed: () => {Navigator.pop(context)}),
          ),
          SliverSafeArea(
            top: false,
            minimum: const EdgeInsets.only(top: 8),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                    child: Text(
                      "공부 계획 10초만에 만들기",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3C3C43).withOpacity(0.6),
                          fontSize: 14.0),
                    ),
                  ),
                  TemplateCardItem(),
                  TemplateCardItem(),
                  TemplateCardItem(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
