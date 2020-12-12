import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hamrogadgets/Models/Banner/ad_banner.dart';
import 'package:hamrogadgets/Models/Banner/ad_banner_notifier.dart';

getBannerAds(AdBannerNotifier bannerAdNotifier) async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection("AdBanner").get();

  List<AdBanner> _bannerAdsList = [];

  snapshot.docs.forEach((document) {
    AdBanner bannerAds = AdBanner.fromMap(document.data());
    _bannerAdsList.add(bannerAds);
  });

  bannerAdNotifier.bannerAdsList = _bannerAdsList;
  print(_bannerAdsList);
}
