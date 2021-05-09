import 'package:cv_app/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  _launchURL() async {
    const url = 'https://github.com/ahmad-prog';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
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
              "Contact",
              style: headerTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            _itemWidget("email", "   ahmad.einieh@gmail.com"),
            _itemWidget("mobile", "   +966533857922"),
            _itemWidget2("address", "   Riyadh, Al-Rawabi , Onaizah Street"),
            _itemWidget3("GitHub", " ahmad-prog "),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(title, value) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: subHeaderTextStyle,
          ),
          TextButton(
            onPressed: () {
              Clipboard.setData(new ClipboardData(text: value));
            },
            child: Text(
              value,
              style: bodyTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemWidget2(title, value) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: subHeaderTextStyle,
          ),
          Text(
            value,
            style: subHeaderTextStyle,
          ),
        ],
      ),
    );
  }

  Widget _itemWidget3(title, value) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: subHeaderTextStyle,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: TextButton(
              onPressed: _launchURL,
              child: Text(
                value,
                style: subHeaderTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
