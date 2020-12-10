import 'package:flutter/material.dart';
import 'package:hamrogadgets/Constants/colors.dart';
import 'package:hamrogadgets/Constants/styles.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            InkWell(
              child: Icon(Icons.menu),
              onTap: () {},
            ),
            SizedBox(
              width: 15,
            ),
            Image.asset(
              'assets/images/hamroGadgetsLogo.png',
              height: 40,
              width: 70,
            ),
            SizedBox(
              width: 30,
            ),
            isSearching == true
                ? Expanded(
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.searchBarColor,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Row(
                        children: [
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                                splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                onTap: () {
                                  setState(() {
                                    isSearching = false;
                                  });
                                },
                                child: Icon(Icons.close_rounded)),
                          )
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'All Categories',
                            style: Styles.navBarHeadingText,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'All Categories',
                            style: Styles.navBarHeadingText,
                          ),
                          Spacer(),
                          InkWell(
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              focusColor: Colors.transparent, 
                              onTap: () {
                                setState(() {
                                  isSearching = true;
                                  print('Pressed');
                                });
                              },
                              child: Center(child: Icon(Icons.search)))
                        ],
                      ),
                    ),
                  ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(),
            )
          ],
        ),
      ),
    );
  }
}
