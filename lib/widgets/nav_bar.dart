import 'package:flutter/material.dart';
import 'package:hamrogadgets/Constants/colors.dart';
import 'package:hamrogadgets/Constants/styles.dart';
import 'package:hamrogadgets/widgets/interactive_nav_item.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Color whiteColor = Colors.white;
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.footerBg,
          height: MediaQuery.of(context).size.height * 0.0536,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Sun-Fri:',
                      style: Styles.customTextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      '  9:00 AM - 9:00 PM',
                      style: Styles.customTextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Visit our showroom in Kathmandu, Nepal, 44600  ',
                      style: Styles.customTextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    InteractiveNavItem(
                      text: 'Contact Us',
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.09,
                      child: Center(
                        child: InteractiveNavItem(
                          text: 'Call Us: 01-4005108 ',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    InteractiveNavItem(
                      imagePath: 'assets/images/fbIcon.png',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    InteractiveNavItem(
                      imagePath: 'assets/images/instaIcon.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SearchWidget(),
      ],
    );
  }
}

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.0536,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InteractiveNavItem(
                  imagePath: 'assets/images/hamroGadgetsLogo.png',
                ),
              ),
            ),
            Expanded(
              flex: 26,
              child: TextFormField(
                controller: searchController,
                style: Styles.customTextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: AppColors.footerBg),
                cursorColor: AppColors.lightGrey,
                decoration: InputDecoration(
                    hintText: 'Search the entire store..',
                    hintStyle: Styles.customTextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: AppColors.lightGrey),
                    fillColor: AppColors.searchBarColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(31),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(31),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(31),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: AppColors.primaryColor,
                      size: 14,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: InteractiveNavItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InteractiveNavItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: InteractiveNavItem(
                  text: 'Login/Sign Up',
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

