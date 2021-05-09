import 'package:cv_app/main.dart';
import 'package:cv_app/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:cv_app/utils/text_style.dart';

class ProtfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        left: 50,
        right: 50,
        top: 25,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Programming Languages",
              style: headerTextStyle,
            ),
            Container(
              child: Text(
                "Programming Languages & Frameworks",
                style: bodyTextStyle,
              ),
              margin: EdgeInsets.only(top: 20, bottom: 20),
            ),
            Row(
              children: [
                _itemWidget("Java", width, "middle, It is my university language"),
                _itemWidget("Python", width, "middle, It is my favorite language"),
                _itemWidget("Dart", width, "junior"),
              ],
            ),
            Row(
              children: [
                _itemWidget("MySQL", width, "intern"),
                _itemWidget("Flutter", width, "junior, It is my favorite framework"),
                _itemWidget("HTML", width, "junior"),
              ],
            ),
            Row(
              children: [
                _itemWidget("CSS", width, "intern"),
                _itemWidget("JavaScript", width, "intern"),
                _itemWidget("Git", width, "junior"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(title, width, descriptions) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          scaffoldkey.currentState.showBottomSheet((context) {
            return Container(
              color: backgroundLite,
              width: width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(iconTint)),
                      icon: Icon(Icons.close),
                      label: Text("close"),
                    ),
                  ),
                  Container(
                    color: cardBGColor,
                    height: 90,
                    alignment: Alignment.center,
                    child: Text(title),
                    //width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Text(
                      "LEVEL:",
                      style: subHeaderTextStyle,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10.0, top: 5),
                    margin: const EdgeInsets.only(bottom: 25),
                    child: Text(
                      descriptions,
                      style: bodyTextStyle,
                    ),
                  ),
                ],
              ),
            );
          });
        },
        child: Container(
          margin: EdgeInsets.all(10),
          height: 100,
          color: cardBGColor,
          alignment: Alignment.center,
          child: Text(title),
        ),
      ),
    );
  }
}
