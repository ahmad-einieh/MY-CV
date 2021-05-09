import 'package:cv_app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:cv_app/utils/common_string.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 50, right: 20, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Ahmad Einieh",
            style: headerTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              "programmer",
              style: subHeaderTextStyle,
            ),
          ),
          Text(
            myinfo,
            style: bodyTextStyle,
          ),
        ],
      ),
    );
  }
}
