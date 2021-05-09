import 'package:cv_app/utils/AppColors.dart';
import 'package:cv_app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:cv_app/utils/common_string.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          left: 50,
          right: 25,
          top: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Certifications",
              style: headerTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            _itemWidget("Java", java),
            _itemWidget("python", python),
            _itemWidget("Adobe", adobe),
            _itemWidget("Git", git),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(title, description) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 16,
                width: 16,
                margin: EdgeInsets.only(
                  right: 10,
                ),
                //padding: EdgeInsets.only(top: 35,),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              Text(
                title,
                style: subHeaderTextStyle,
              )
            ],
          ),
          Container(
            height: 66,
            margin: EdgeInsets.only(left: 6, top: 10),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(width: 2, color: Colors.grey))),
            child: Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: cardBGColor,
              ),
              child: Text(
                description,
                style: bodyTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
