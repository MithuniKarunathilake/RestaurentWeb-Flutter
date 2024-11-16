import 'package:flutter/material.dart';
import 'package:restaurant__menu/constants/colors.dart';
import 'package:restaurant__menu/constants/nav_items.dart';
import 'package:restaurant__menu/constants/size.dart';
import 'package:restaurant__menu/widgets/drawer_mobile.dart';
import 'package:restaurant__menu/widgets/header_desktop.dart';
import 'package:restaurant__menu/widgets/header_mobile.dart';
import 'package:restaurant__menu/widgets/item_card_widget.dart';
import 'package:restaurant__menu/widgets/main_desktop.dart';
import 'package:restaurant__menu/widgets/main_mobile.dart';
import 'package:restaurant__menu/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //Main
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
                onLogoTap: () {},
              ),

            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),
            //Burgers
            Container(
              height: screenHeight,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              constraints: const BoxConstraints(
                minHeight: 560,
              ),
              color: CustomColor.lightYellow,
              child: Column(
                children: [
                  const Text(
                    "Burgers",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    height: 320,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CustomColor.darkYellow,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/burger.jpg",
                          height: 140,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(12, 15, 12, 2),
                          child: Text(
                            "Name",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 4),
                          child: Text(
                            "Burger",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(12, 15, 12, 2),
                          child: Text(
                            "Price",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 4),
                          child: Text(
                            "1200.00",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(12, 15, 12, 2),
                          child: Text(
                            "Rating",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 4),
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Desserts
            Container(
              height: 500,
              width: double.maxFinite,
              color: CustomColor.lightRed,
            ),

            //Beverage
            Container(
              height: 500,
              width: double.maxFinite,
              color: CustomColor.lightYellow,
            ),
          ],
        ),
      );
    });
  }
}
