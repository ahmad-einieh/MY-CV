import 'package:cv_app/Pages/contact_page.dart';
import 'package:cv_app/Pages/experience_page.dart';
import 'package:cv_app/Pages/home_page.dart';
import 'package:cv_app/Pages/portfolio_page.dart';
import 'package:cv_app/utils/AppIcons.dart';
import 'package:flutter/material.dart';
import 'package:cv_app/widgets/navigation_menu_widget.dart';
import 'package:cv_app/utils/AppColors.dart';

void main() {
  runApp(MyApp());
}

void _item(ctx) {
  var assetsImage = new AssetImage('assets/me.png');
  var image = new Image(image: assetsImage, width: 100.0, height: 500.0);
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: ctx,
      builder: (_) {
        return Container(
          child: image,
          margin: EdgeInsets.only(bottom: 10),
        );
      });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmad Einieh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;
  int selectedMenuIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedMenuIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: backgroundLite,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 15),
            width: 80,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 25,
                  ),
                  width: 100,
                  height: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: TextButton(
                    onPressed: () => _item(context),
                    child: Image.asset("assets/me.png"),
                  ),
                ),
                NavigationBar(navHome,
                    height: 40,
                    width: 40,
                    isSelected: selectedMenuIndex == 0, onClick: () {
                  _tabController.animateTo(0);
                }),
                NavigationBar(navTime,
                    height: 40,
                    width: 40,
                    isSelected: selectedMenuIndex == 1, onClick: () {
                  _tabController.animateTo(1);
                }),
                NavigationBar(navPortfolio,
                    height: 40,
                    width: 40,
                    isSelected: selectedMenuIndex == 2, onClick: () {
                  _tabController.animateTo(2);
                }),
                NavigationBar(navContact,
                    height: 40,
                    width: 40,
                    isSelected: selectedMenuIndex == 3, onClick: () {
                  _tabController.animateTo(3);
                }),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              child: TabBarView(
                controller: _tabController,
                children: [
                  HomePage(),
                  ExperiencePage(),
                  ProtfolioPage(),
                  ContactPage(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
