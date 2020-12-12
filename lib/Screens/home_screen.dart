import 'package:flutter/material.dart';
import 'package:hamrogadgets/Models/Banner/ad_banner_notifier.dart';
import 'package:hamrogadgets/Models/Banner/ad_banner_service.dart';
import 'package:hamrogadgets/Models/Banner/full_length_banner_notifier.dart';
import 'package:hamrogadgets/Models/Banner/full_length_banner_service.dart';
import 'package:hamrogadgets/Models/Product/NewProducts/new_products_notifier.dart';
import 'package:hamrogadgets/Models/Product/NewProducts/new_products_service.dart';
import 'package:hamrogadgets/Utils.dart';
import 'package:hamrogadgets/widgets/ads_banners_line.dart';
import 'package:hamrogadgets/widgets/all_widgets.dart';
import 'package:hamrogadgets/widgets/carousel.dart';
import 'package:hamrogadgets/widgets/new_products_line.dart';
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
    NewProductsNotifier newProductsNotifier =
        Provider.of<NewProductsNotifier>(context, listen: false);
    getNewProducts(newProductsNotifier);
    AdBannerNotifier adBannerNotifier =
        Provider.of<AdBannerNotifier>(context, listen: false);
    getBannerAds(adBannerNotifier);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FullLengthBannerAdNotifier fullLengthBannerAdNotifier =
        Provider.of<FullLengthBannerAdNotifier>(context);
    var fullLengthBannerAds = fullLengthBannerAdNotifier.bannerAdsList;

    NewProductsNotifier newProductsNotifier =
        Provider.of<NewProductsNotifier>(context);
    var newProducts = newProductsNotifier.newProductsList;

    AdBannerNotifier adBannerNotifier =
        Provider.of<AdBannerNotifier>(context, listen: false);
    var bannerAds = adBannerNotifier.bannerAdsList;
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Scaffold(
          key: _scaffoldKey,
          body: SingleChildScrollView(
            child: Column(
              children: [
                NavBar(),
                FullLengthCarousel(
                  aspectRatio: 5.5,
                  height: 300,
                  banners: fullLengthBannerAds,
                ),
                NewProductsLine(
                  newProducts: newProducts,
                ),
                bannerAds.length != 0
                    ? AdBannersLine(
                        banners: bannerAds,
                      )
                    : Container()
              ],
            ),
          ),
        );
      },
    );
  }
}
