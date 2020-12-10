import 'package:flutter/material.dart';
import 'package:hamrogadgets/Constants/styles.dart';

void showNoInternetSnack(
  GlobalKey<ScaffoldState> _scaffoldKey,
) {
  _scaffoldKey.currentState.showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: Duration(milliseconds: 7000),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "No internet connection! Please connect to the internet to continue.",
              style: Styles.headingTextWithSecondaryColor(),
            ),
          ),
          Icon(
            Icons.error_outline,
            color: Colors.amber,
          )
        ],
      ),
    ),
  );
}
