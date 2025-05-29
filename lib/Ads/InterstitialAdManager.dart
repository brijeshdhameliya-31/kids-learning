// ignore_for_file: file_names, avoid_print

import 'dart:io';
import 'dart:ui';

import 'package:google_mobile_ads/google_mobile_ads.dart';

// App Id : ca-app-pub-4711304367802880~4430781121
// InterstitialAd Id : ca-app-pub-4711304367802880/1341583353
class InterstitialAdManager {
  static InterstitialAdManager shared = InterstitialAdManager._in();
  InterstitialAd? _interstitialAd;
  bool isAdLoaded = false;

  InterstitialAdManager._in() {
    loadInterstitialAd();
  }

  void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: Platform.isAndroid
          ? "ca-app-pub-3940256099942544/1033173712"
          : "ca-app-pub-3940256099942544/1033173712",// Test Ad Unit ID
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          isAdLoaded = true;
          print("Ads Loaded...");
        },
        onAdFailedToLoad: (error) {
          print('Failed to load interstitial ad: $error');
        },
      ),
    );
  }

  void showAdAndNavigate(Function() navigateFunction) {
    navigateFunction();
    if (isAdLoaded && _interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          loadInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          print('Ad failed to show: $error');
          loadInterstitialAd();
          navigateFunction();
        },
      );
      _interstitialAd!.show();
    } else {
      loadInterstitialAd();
    }
  }

  void showAdAndThen(VoidCallback onAdClosed) {
    if (isAdLoaded && _interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          loadInterstitialAd();
          onAdClosed(); // ✅ callback after ad
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          loadInterstitialAd();
          onAdClosed(); // still continue
        },
      );
      _interstitialAd!.show();
      _interstitialAd = null;
      isAdLoaded = false;
    } else {
      onAdClosed(); // if ad isn't ready, just continue
    }
  }
}
