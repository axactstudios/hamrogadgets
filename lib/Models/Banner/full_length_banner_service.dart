import 'package:cloud_firestore/cloud_firestore.dart';
import 'full_length_banner.dart';
import 'full_length_banner_notifier.dart';

getFullLengthBannerAds(FullLengthBannerAdNotifier bannerAdNotifier) async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection("FullLengthBanner").get();

  List<FullLengthBanner> _bannerAdsList = [];

  snapshot.docs.forEach((document) {
    FullLengthBanner bannerAds = FullLengthBanner.fromMap(document.data());
    _bannerAdsList.add(bannerAds);
  });

  bannerAdNotifier.bannerAdsList = _bannerAdsList;
  print(_bannerAdsList);
}
