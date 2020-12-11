import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'full_length_banner.dart';

class FullLengthBannerAdNotifier with ChangeNotifier {
  List<FullLengthBanner> _bannerAdsList = [];
  FullLengthBanner _bannerAds;

  UnmodifiableListView<FullLengthBanner> get bannerAdsList =>
      UnmodifiableListView(_bannerAdsList);

  FullLengthBanner get bannerAds => _bannerAds;

  set bannerAdsList(List<FullLengthBanner> bannerAdsList) {
    _bannerAdsList = bannerAdsList;
    notifyListeners();
  }

  set bannerAds(FullLengthBanner bannerAds) {
    _bannerAds = bannerAds;
    notifyListeners();
  }
}
