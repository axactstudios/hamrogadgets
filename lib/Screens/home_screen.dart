import 'package:flutter/material.dart';
import 'package:hamrogadgets/BannerModel/full_length_banner_notifier.dart';
import 'package:hamrogadgets/BannerModel/full_length_banner_service.dart';
import 'package:hamrogadgets/Utils.dart';
import 'package:hamrogadgets/widgets/all_widgets.dart';
import 'package:hamrogadgets/widgets/carousel.dart';
import 'package:provider/provider.dart';

import '../widgets/nav_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void initState() {
    // checkInternetConnectivity().then((value) => {
    //       value == true
    //           ? () {
    //               FullLengthBannerAdNotifier fullLengthBannerAdNotifier =
    //                   Provider.of<FullLengthBannerAdNotifier>(context,
    //                       listen: false);
    //               getFullLengthBannerAds(fullLengthBannerAdNotifier);
    //             }()
    //           : showNoInternetSnack(_scaffoldKey)
    // });

    FullLengthBannerAdNotifier fullLengthBannerAdNotifier =
        Provider.of<FullLengthBannerAdNotifier>(context, listen: false);
    getFullLengthBannerAds(fullLengthBannerAdNotifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FullLengthBannerAdNotifier fullLengthBannerAdNotifier =
        Provider.of<FullLengthBannerAdNotifier>(context);
    var bannerAds = fullLengthBannerAdNotifier.bannerAdsList;

    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Scaffold(
          key: _scaffoldKey,
          body: SingleChildScrollView(
            child: Column(
              children: [
                NavBar(),
                Carousel(
                  aspectRatio: 5.5,
                  height: 300,
                  banners: bannerAds,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
