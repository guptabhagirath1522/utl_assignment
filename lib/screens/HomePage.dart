import 'package:flutter/material.dart';
import 'package:test_app/components/bottom_tabbar.dart';
import 'package:test_app/constants/color_constants.dart';
import 'package:test_app/models/tab_icons.dart';
import 'package:test_app/screens/cardPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController? animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;
  double topBarOpacity = 0.4;
  Widget tabBody = Container(
    color: background,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = const CardPage();
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              tabBody,
              getAppBarUI(),
              bottomBar(),
            ],
          )),
    );
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody = const CardPage();
                });
              });
            } else if (index == 1) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody = const CardPage();
                });
              });
            }
          },
        ),
      ],
    );
  }

  Widget getAppBarUI() {
    return Column(
      children: <Widget>[
        AnimatedBuilder(
          animation: animationController!,
          builder: (BuildContext context, Widget? child) {
            return Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(64.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: grey.withOpacity(0.4 * topBarOpacity),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
              child: const Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  Spacer(),
                  Text("Time Table",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child:
                        Icon(Icons.notifications_outlined, color: Colors.white),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
