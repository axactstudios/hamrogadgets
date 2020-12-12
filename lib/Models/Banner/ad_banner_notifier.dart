import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:hamrogadgets/Models/Banner/ad_banner.dart';

class AdBannerNotifier with ChangeNotifier {
  List<AdBanner> _bannerAdsList = [];
  AdBanner _bannerAds;

  UnmodifiableListView<AdBanner> get bannerAdsList =>
      UnmodifiableListView(_bannerAdsList);

  AdBanner get bannerAds => _bannerAds;

  set bannerAdsList(List<AdBanner> bannerAdsList) {
    _bannerAdsList = bannerAdsList;
    notifyListeners();
  }

  set bannerAds(AdBanner bannerAds) {
    _bannerAds = bannerAds;
    notifyListeners();
  }
}
