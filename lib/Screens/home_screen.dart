import 'package:flutter/material.dart';
import 'package:hamrogadgets/Models/Banner/ad_banner_notifier.dart';
import 'package:hamrogadgets/Models/Banner/ad_banner_service.dart';
import 'package:hamrogadgets/Models/Banner/full_length_banner_notifier.dart';
import 'package:hamrogadgets/Models/Banner/full_length_banner_service.dart';
import 'package:hamrogadgets/Models/Product/NewProducts/new_products_notifier.dart';
import 'package:hamrogadgets/Models/Product/NewProducts/new_products_service.dart';
import 'package:hamrogadgets/Models/Product/TrendingProducts/trending_products_notifier.dart';
import 'package:hamrogadgets/Models/Product/TrendingProducts/trending_products_service.dart';
import 'package:hamrogadgets/Models/Testimonials/testimonial_notifier.dart';
import 'package:hamrogadgets/Models/Testimonials/testimonial_service.dart';
import 'package:hamrogadgets/Utils.dart';
import 'package:hamrogadgets/widgets/ads_banners_line.dart';
import 'package:hamrogadgets/widgets/all_widgets.dart';
import 'package:hamrogadgets/widgets/carousel.dart';
import 'package:hamrogadgets/widgets/products_line.dart';
import 'package:hamrogadgets/widgets/testimonials_carousel.dart';
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

    TrendingProductsNotifier trendingProductsNotifier =
        Provider.of<TrendingProductsNotifier>(context, listen: false);
    getTrendingProducts(trendingProductsNotifier);

    AdBannerNotifier adBannerNotifier =
        Provider.of<AdBannerNotifier>(context, listen: false);
    getBannerAds(adBannerNotifier);

    TestimonialNotifier testimonialNotifier =
        Provider.of<TestimonialNotifier>(context, listen: false);
    getTestimonials(testimonialNotifier);

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

    TrendingProductsNotifier trendingProductsNotifier =
        Provider.of<TrendingProductsNotifier>(context);
    var trendingProducts = trendingProductsNotifier.trendingProductsList;

    AdBannerNotifier adBannerNotifier =
        Provider.of<AdBannerNotifier>(context, listen: false);
    var bannerAds = adBannerNotifier.bannerAdsList;

    TestimonialNotifier testimonialNotifier =
        Provider.of<TestimonialNotifier>(context, listen: false);
    var testimonials = testimonialNotifier.testimonialsList;

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
                newProducts.length != 0
                    ? ProductsLine(products: newProducts, title: 'New Products')
                    : Container(),
                bannerAds.length != 0
                    ? AdBannersLine(
                        banner1: bannerAds[0],
                        banner2: bannerAds[1],
                        banner3: bannerAds[2],
                      )
                    : Container(),
                trendingProducts.length != 0
                    ? ProductsLine(
                        products: trendingProducts, title: 'Trending Products')
                    : Container(),
                bannerAds.length > 3 && bannerAds.length > 5
                    ? AdBannersLine(
                        banner1: bannerAds[3],
                        banner2: bannerAds[4],
                        banner3: bannerAds[5],
                      )
                    : Container(),
                testimonials.length != 0
                    ? TestimonialsCarousel(
                        testimonials: testimonials,
                        height: 300,
                        aspectRatio: 3.5,
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
