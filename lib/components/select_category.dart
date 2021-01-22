import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';
import 'package:stoodi_ui/components/category_item.dart';

// Select Category
class SelectCategoryDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 15.0, 24.0, 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "카테고리 선택",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  CupertinoButton(
                    padding: EdgeInsetsDirectional.only(start: 15.0),
                    child: Text("완료"),
                    onPressed: () => {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: 52.0,
                // color: Color(0xFFF6F7F9),
                child: CupertinoTextField(
                  clearButtonMode: OverlayVisibilityMode.editing,
                  placeholder: "카테고리를 검색할 수 있어요!",
                  padding: EdgeInsets.only(left: 10.0),
                  prefix: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 5.0),
                    child: Icon(MIcon.riSearchLine),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F7F9),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 24.0, bottom: 10.0),
              child: Text(
                "추천 카테고리",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3C3C43).withOpacity(0.6),
                    fontSize: 14.0),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//
// class SelectCategoryDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//
//         child: CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//           middle: Text('Modal Page')),
//       child: SafeArea(
//         bottom: false,
//         child: ListView(
//           shrinkWrap: true,
//           controller: ModalScrollController.of(context),
//           physics: ClampingScrollPhysics(),
//           children: ListTile.divideTiles(
//               context: context,
//               tiles: List.generate(
//                 100,
//                 (index) =>
//                     ListTile(title: Text('Item $index'), onTap: () => {}),
//               )).toList(),
//         ),
//       ),
//     ));
//   }
// }
